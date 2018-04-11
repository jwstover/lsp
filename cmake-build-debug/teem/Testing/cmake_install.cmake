# Install script for directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/air/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/biff/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/nrrd/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/unrrdu/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/gage/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/ten/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet/cmake_install.cmake")

endif()

