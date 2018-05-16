//
// Created by Jake Stover on 5/9/18.
//

#include <boost/filesystem.hpp>
#include <iostream>

#include <util.h>
#include <teem/nrrd.h>
#include "corrnhdr.h"

using namespace boost::filesystem;

void setup_corrnhdr(CLI::App &app) {
  auto opt = std::make_shared<corrnhdrOptions>();
  auto sub = app.add_subcommand("corrnhdr", "Apply the corrections calculated by corrimg and corrfind.");

  sub->add_option("-n, --num_nhdr", opt->num, "The number of the last nhdr file.");

  sub->set_callback([opt] {
      try{
        corrnhdr_main(*opt);
      } catch (LSPException &e) {
        std::cerr << "Exception thrown by " << e.get_func() << "() in " << e.get_file() << ": " << e.what() << std::endl;
      }
  });
}

void corrnhdr_main(corrnhdrOptions const &opt) {
  auto mop = airMopNew();
  const int num = opt.num;
  const std::string dir = current_path().string() + "/reg/";
  const std::string basename = "-corr1.txt";

  std::ostringstream ss;

  std::vector<std::vector<double>> shifts;  //offset from previous frame
  std::vector<std::vector<double>> offsets = {{0,0,0}}; //offset from first frame

  for (int i = 0; i <= num; i++) {
    ss.str(""); ss.clear();
    ss << std::setw(3) << std::setfill('0') << i;
    std::string s_num(ss.str());

    path file = dir + s_num + basename;
    if (exists(file)) {
      ifstream inFile;
      inFile.open(file.string());

      std::vector<double> tmp;
      std::vector<double> tmp2;

      for (int j = 0; j < 3; j++) {
        double x;
        inFile >> x;
        tmp.push_back(x);
        tmp2.push_back(offsets[offsets.size()-1][j] + x);
      }
      shifts.push_back(tmp);
      offsets.push_back(tmp2);
    } else {
      std::cout << "[corrnhdr] WARN: " << file.string() << " does not exist." << std::endl;
    }
  }

  offsets.erase(offsets.begin());   //Remove first entry of {0,0,0}

  Nrrd *offset_n = nrrdNew();
  airMopAdd(mop, offset_n, (airMopper)nrrdNix, airMopAlways);

  if (nrrdWrap_va(offset_n, &offsets, nrrdTypeDouble, 2, 3, offsets.size()) ||
          nrrdSave("reg/offsets.nrrd", offset_n, NULL)) {
    char *msg;
    char *err = biffGetDone(NRRD);

    sprintf(msg, "Error creating offset nrrd: %s", err);

    airMopAdd(mop, err, airFree, airMopAlways);
    airMopError(mop);

    throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
  };

  Nrrd *offset_median = nrrdNew();
  Nrrd *ntmp = nrrdNew();

  auto nsize = AIR_UINT(offset_n->axis[0].size);
  auto mnout = AIR_CALLOC(nsize, Nrrd*);

  airMopAdd(mop, ntmp, (airMopper)nrrdNuke, airMopAlways);
  airMopAdd(mop, mnout, airFree, airMopAlways);

  for (int ni=0; ni<nsize; ni++) {
    if (nrrdSlice(ntmp, offset_n, 0, ni)) {
      char *msg;
      char *err = biffGetDone(NRRD);

      sprintf(msg, "Error slicing nrrd: %s", err);

      airMopAdd(mop, err, airFree, airMopAlways);
      airMopError(mop);

      throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
    }
    airMopAdd(mop, mnout[ni] = nrrdNew(), (airMopper)nrrdNuke, airMopAlways);
    if (nrrdCheapMedian(mnout[ni], ntmp, 1, 0, 2, 1.0, 256)) {
      char *msg;
      char *err = biffGetDone(NRRD);

      sprintf(msg, "Error computing median: %s", err);

      airMopAdd(mop, err, airFree, airMopAlways);
      airMopError(mop);

      throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
    }
  }
  if (nrrdJoin(offset_median, (const Nrrd*const*)mnout, nsize, 0, AIR_TRUE)) {
    char *msg;
    char *err = biffGetDone(NRRD);

    sprintf(msg, "Error joining median slices: %s", err);

    airMopAdd(mop, err, airFree, airMopAlways);
    airMopError(mop);

    throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
  }
  nrrdAxisInfoCopy(offset_median, offset_n, NULL, NRRD_AXIS_INFO_NONE);
  if (nrrdBasicInfoCopy(offset_median, offset_n,
                        NRRD_BASIC_INFO_DATA_BIT
                        | NRRD_BASIC_INFO_TYPE_BIT
                        | NRRD_BASIC_INFO_BLOCKSIZE_BIT
                        | NRRD_BASIC_INFO_DIMENSION_BIT
                        | NRRD_BASIC_INFO_CONTENT_BIT
                        | NRRD_BASIC_INFO_COMMENTS_BIT
                        | (nrrdStateKeyValuePairsPropagate
                           ? 0
                           : NRRD_BASIC_INFO_KEYVALUEPAIRS_BIT))) {
    char *msg;
    char *err = biffGetDone(NRRD);

    sprintf(msg, "Error copying nrrd info: %s", err);

    airMopAdd(mop, err, airFree, airMopAlways);
    airMopError(mop);

    throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
  }

  airMopSingleOkay(mop, offset_n);

  Nrrd *offset_smooth = nrrdNew();
  auto rsmc = nrrdResampleContextNew();
  airMopAdd(mop, rsmc, (airMopper)nrrdResampleContextNix, airMopAlways);


  double kparm[2] = {2, 3};
  if (nrrdResampleInputSet(rsmc, offset_median) ||
      nrrdResampleKernelSet(rsmc, 0, NULL, NULL) ||
      nrrdResampleBoundarySet(rsmc, nrrdBoundaryBleed) ||
      nrrdResampleRenormalizeSet(rsmc, AIR_TRUE) ||
      nrrdResampleKernelSet(rsmc, 1, nrrdKernelGaussian, kparm) ||
      nrrdResampleSamplesSet(rsmc, 1, offset_median->axis[1].size) ||
      nrrdResampleRangeFullSet(rsmc, 1) ||
      nrrdResampleExecute(rsmc, offset_smooth)) {
    char *msg;
    char *err = biffGetDone(NRRD);

    sprintf(msg, "Error resampling nrrd: %s", err);

    airMopAdd(mop, err, airFree, airMopAlways);
    airMopError(mop);

    throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
  }

  Nrrd *base = nrrdNew();
  airMopAdd(mop, base, (airMopper)nrrdNuke, airMopAlways);

  std::vector<std::vector> data={{1,1,1}};
  for (int i = 0; i < offset_smooth->axis[1].size-2; i++) {
    data.push_back({0,0,0});
  }
  data.push_back({1,1,1});

  nrrdWrap_va(base, &data, 2, 3, offset_smooth->axis[1].size);

  Nrrd *offset_smooth1 = nrrdNew();

  kparm[0] = 1.5;
  if (nrrdResampleInputSet(rsmc, base) ||
      nrrdResampleKernelSet(rsmc, 0, NULL, NULL) ||
      nrrdResampleBoundarySet(rsmc, nrrdBoundaryBleed) ||
      nrrdResampleRenormalizeSet(rsmc, AIR_TRUE) ||
      nrrdResampleKernelSet(rsmc, 1, nrrdKernelGaussian, kparm) ||
      nrrdResampleSamplesSet(rsmc, 1, base->axis[1].size) ||
      nrrdResampleRangeFullSet(rsmc, 1) ||
      nrrdResampleExecute(rsmc, offset_smooth1)) {
    char *msg;
    char *err = biffGetDone(NRRD);

    sprintf(msg, "Error resampling nrrd: %s", err);

    airMopAdd(mop, err, airFree, airMopAlways);
    airMopError(mop);

    throw LSPException(msg, "corrnhdr.cpp", "corrnhdr_main");
  }

  nrrdQuantize(offset_smooth1, offset_smooth1, NULL, 32);
  nrrdUnquantize(offset_smooth1, offset_smooth1, nrrdTypeDouble);


  nrrdArithIterTernaryOp();
  airMopOkay(mop);

}