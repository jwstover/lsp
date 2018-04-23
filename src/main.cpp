//
// Created by Jake Stover on 4/10/18.
//
#include <iostream>
#include <string>
#include "skimczi.h"

int main(int argc, char** argv) {
  CLI::App app;

  setup_skim(app);

  CLI11_PARSE(app, argc, argv);

  return 0;
}