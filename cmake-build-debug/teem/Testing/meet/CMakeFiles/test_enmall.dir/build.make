# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/jwstover/Documents/UChicago/Spring/research/Anim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug

# Include any dependencies generated for this target.
include teem/Testing/meet/CMakeFiles/test_enmall.dir/depend.make

# Include the progress variables for this target.
include teem/Testing/meet/CMakeFiles/test_enmall.dir/progress.make

# Include the compile flags for this target's objects.
include teem/Testing/meet/CMakeFiles/test_enmall.dir/flags.make

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o: teem/Testing/meet/CMakeFiles/test_enmall.dir/flags.make
teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o: ../teem/Testing/meet/enmall.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/test_enmall.dir/enmall.o   -c /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/meet/enmall.c

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/test_enmall.dir/enmall.i"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/meet/enmall.c > CMakeFiles/test_enmall.dir/enmall.i

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/test_enmall.dir/enmall.s"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/meet/enmall.c -o CMakeFiles/test_enmall.dir/enmall.s

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.requires:

.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.requires

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.provides: teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.requires
	$(MAKE) -f teem/Testing/meet/CMakeFiles/test_enmall.dir/build.make teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.provides.build
.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.provides

teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.provides.build: teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o


# Object files for target test_enmall
test_enmall_OBJECTS = \
"CMakeFiles/test_enmall.dir/enmall.o"

# External object files for target test_enmall
test_enmall_EXTERNAL_OBJECTS =

bin/test_enmall: teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o
bin/test_enmall: teem/Testing/meet/CMakeFiles/test_enmall.dir/build.make
bin/test_enmall: bin/libteem.a
bin/test_enmall: /usr/lib/libbz2.dylib
bin/test_enmall: /usr/lib/libz.dylib
bin/test_enmall: /usr/local/lib/libpng.dylib
bin/test_enmall: /usr/lib/libz.dylib
bin/test_enmall: /usr/local/lib/libpng.dylib
bin/test_enmall: teem/Testing/meet/CMakeFiles/test_enmall.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../bin/test_enmall"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_enmall.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teem/Testing/meet/CMakeFiles/test_enmall.dir/build: bin/test_enmall

.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/build

teem/Testing/meet/CMakeFiles/test_enmall.dir/requires: teem/Testing/meet/CMakeFiles/test_enmall.dir/enmall.o.requires

.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/requires

teem/Testing/meet/CMakeFiles/test_enmall.dir/clean:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet && $(CMAKE_COMMAND) -P CMakeFiles/test_enmall.dir/cmake_clean.cmake
.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/clean

teem/Testing/meet/CMakeFiles/test_enmall.dir/depend:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jwstover/Documents/UChicago/Spring/research/Anim /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/Testing/meet /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/Testing/meet/CMakeFiles/test_enmall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teem/Testing/meet/CMakeFiles/test_enmall.dir/depend

