//
// Created by Jake Stover on 4/10/18.
//

#ifndef LSP_UTIL_H
#define LSP_UTIL_H

#include <teem/nrrd.h>
#include <unitypes.h>
#include <string>

std::string zero_pad(int num, uint len);

Nrrd* safe_load_nrrd(std::string filename);

#endif //LSP_UTIL_H
