# Install script for directory: /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/bin/libteem.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libteem.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libteem.a")
    execute_process(COMMAND "/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libteem.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/teem" TYPE FILE FILES
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/air.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/hest.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/biff.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/nrrd.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/nrrdDefines.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/nrrdMacros.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/nrrdEnums.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/ell.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/ellMacros.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/unrrdu.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/moss.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/gage.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/dye.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/limn.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/echo.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/hoover.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/seek.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/ten.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/tenMacros.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/pull.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/mite.h"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/include/teem/meet.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/CMake/TeemConfig.cmake"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/CMake/TeemUse.cmake"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/TeemBuildSettings.cmake"
    "/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/TeemLibraryDepends.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin/cmake_install.cmake")
  include("/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/cmake_install.cmake")

endif()

