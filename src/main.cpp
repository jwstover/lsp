//
// Created by Jake Stover on 4/10/18.
//
#include <iostream>
#include <string>
#include "skimczi.h"
#include "anim.h"

#include "CLI11.hpp"

int main(int argc, char** argv) {
  CLI::App app{"Collection of utilities for processing of lightsheet data"};

  setup_skim(app);
  setup_anim(app);

  CLI11_PARSE(app, argc, argv);

  if (argc == 1) {
    std::cout << app.help();
  }

  return 0;
}