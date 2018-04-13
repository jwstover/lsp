//
// Created by Jake Stover on 4/10/18.
//
#include <iostream>
#include <string>
#include <boost/program_options.hpp>

namespace po = boost::program_options;

int main(int argc, char** argv) {
  po::options_description desc("Usage Information:");
  try {
    desc.add_options()
            ("help,h", "help message here...")
            ("config-file,c", "configuration file");

    po::variables_map vm;

    try {
      po::store(po::parse_command_line(argc, argv, desc), vm);

      if (vm.count("help") || vm.empty()) {
        std::cout << "Lightsheet Processing Application" << std::endl
                  << desc << std::endl;
        return 0;
      }

      po::notify(vm);
    } catch (po::error &e) {
      std::cerr << "ERROR: " << e.what() << std::endl << std::endl;
      std::cerr << desc << std::endl;
      return 1;
    }

  } catch (std::exception &e) {
    std::cerr << "Unhandled Exception reached the top of main:"
                 << e.what() << ", application will exit" << std::endl;
    return 2;
  }

  return 0;
}