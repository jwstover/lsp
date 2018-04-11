//
// Created by Jake Stover on 4/10/18.
//
#include <iostream>
#include <string>
#include <teem/nrrd.h>
#include <boost/program_options.hpp>

namespace po = boost::program_options;

int main(int argc, char** argv) {
  po::options_description desc("Allowed Options");
  desc.add_options()
          ("help", "print help")
          ("input-file,i", "input nrrd file");

  Nrrd *nin = nrrdNew();

}