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
include teem/src/bin/CMakeFiles/overrgb.dir/depend.make

# Include the progress variables for this target.
include teem/src/bin/CMakeFiles/overrgb.dir/progress.make

# Include the compile flags for this target's objects.
include teem/src/bin/CMakeFiles/overrgb.dir/flags.make

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o: teem/src/bin/CMakeFiles/overrgb.dir/flags.make
teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o: ../teem/src/bin/overrgb.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/overrgb.dir/overrgb.o   -c /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/overrgb.c

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/overrgb.dir/overrgb.i"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/overrgb.c > CMakeFiles/overrgb.dir/overrgb.i

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/overrgb.dir/overrgb.s"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/overrgb.c -o CMakeFiles/overrgb.dir/overrgb.s

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.requires:

.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.requires

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.provides: teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.requires
	$(MAKE) -f teem/src/bin/CMakeFiles/overrgb.dir/build.make teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.provides.build
.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.provides

teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.provides.build: teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o


# Object files for target overrgb
overrgb_OBJECTS = \
"CMakeFiles/overrgb.dir/overrgb.o"

# External object files for target overrgb
overrgb_EXTERNAL_OBJECTS =

bin/overrgb: teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o
bin/overrgb: teem/src/bin/CMakeFiles/overrgb.dir/build.make
bin/overrgb: bin/libteem.a
bin/overrgb: /usr/lib/libbz2.dylib
bin/overrgb: /usr/lib/libz.dylib
bin/overrgb: /usr/local/lib/libpng.dylib
bin/overrgb: /usr/lib/libz.dylib
bin/overrgb: /usr/local/lib/libpng.dylib
bin/overrgb: teem/src/bin/CMakeFiles/overrgb.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../bin/overrgb"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/overrgb.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teem/src/bin/CMakeFiles/overrgb.dir/build: bin/overrgb

.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/build

teem/src/bin/CMakeFiles/overrgb.dir/requires: teem/src/bin/CMakeFiles/overrgb.dir/overrgb.o.requires

.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/requires

teem/src/bin/CMakeFiles/overrgb.dir/clean:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && $(CMAKE_COMMAND) -P CMakeFiles/overrgb.dir/cmake_clean.cmake
.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/clean

teem/src/bin/CMakeFiles/overrgb.dir/depend:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jwstover/Documents/UChicago/Spring/research/Anim /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin/CMakeFiles/overrgb.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teem/src/bin/CMakeFiles/overrgb.dir/depend
