//
// Created by Jake Stover on 4/10/18.
//

#include "util.h"

#include <iostream>
#include <sstream>
#include <teem/nrrd.h>


std::string zero_pad(int num, uint len) {
  std::stringstream ss;

  // the number is converted to string with the help of stringstream
  ss << num;
  std::string ret;
  ss >> ret;

  // Append zero chars
  u_long str_length = ret.length();
  for (int i = 0; i < len - str_length; i++)
    ret.insert(0, "0");
  return ret;
}


Nrrd* safe_load_nrrd(std::string filename) {
  std::string me = "demoIO";
  char* err;

  Nrrd *nin;

  /* create a nrrd; at this point this is just an empty container */
  nin = nrrdNew();

  /* read in the nrrd from file */
  if (nrrdLoad(nin, filename.c_str(), NULL)) {
    err = biffGetDone(NRRD);
    std::cerr << me << ":trouble reading " << filename << ":" << err << std::endl;
    free(err);
    return nullptr;
  }

  return nin;
}