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
include teem/src/bin/CMakeFiles/tend.dir/depend.make

# Include the progress variables for this target.
include teem/src/bin/CMakeFiles/tend.dir/progress.make

# Include the compile flags for this target's objects.
include teem/src/bin/CMakeFiles/tend.dir/flags.make

teem/src/bin/CMakeFiles/tend.dir/tend.o: teem/src/bin/CMakeFiles/tend.dir/flags.make
teem/src/bin/CMakeFiles/tend.dir/tend.o: ../teem/src/bin/tend.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object teem/src/bin/CMakeFiles/tend.dir/tend.o"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/tend.dir/tend.o   -c /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/tend.c

teem/src/bin/CMakeFiles/tend.dir/tend.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/tend.dir/tend.i"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/tend.c > CMakeFiles/tend.dir/tend.i

teem/src/bin/CMakeFiles/tend.dir/tend.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/tend.dir/tend.s"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin/tend.c -o CMakeFiles/tend.dir/tend.s

teem/src/bin/CMakeFiles/tend.dir/tend.o.requires:

.PHONY : teem/src/bin/CMakeFiles/tend.dir/tend.o.requires

teem/src/bin/CMakeFiles/tend.dir/tend.o.provides: teem/src/bin/CMakeFiles/tend.dir/tend.o.requires
	$(MAKE) -f teem/src/bin/CMakeFiles/tend.dir/build.make teem/src/bin/CMakeFiles/tend.dir/tend.o.provides.build
.PHONY : teem/src/bin/CMakeFiles/tend.dir/tend.o.provides

teem/src/bin/CMakeFiles/tend.dir/tend.o.provides.build: teem/src/bin/CMakeFiles/tend.dir/tend.o


# Object files for target tend
tend_OBJECTS = \
"CMakeFiles/tend.dir/tend.o"

# External object files for target tend
tend_EXTERNAL_OBJECTS =

bin/tend: teem/src/bin/CMakeFiles/tend.dir/tend.o
bin/tend: teem/src/bin/CMakeFiles/tend.dir/build.make
bin/tend: bin/libteem.a
bin/tend: /usr/lib/libbz2.dylib
bin/tend: /usr/lib/libz.dylib
bin/tend: /usr/local/lib/libpng.dylib
bin/tend: /usr/lib/libz.dylib
bin/tend: /usr/local/lib/libpng.dylib
bin/tend: teem/src/bin/CMakeFiles/tend.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable ../../../bin/tend"
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tend.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
teem/src/bin/CMakeFiles/tend.dir/build: bin/tend

.PHONY : teem/src/bin/CMakeFiles/tend.dir/build

teem/src/bin/CMakeFiles/tend.dir/requires: teem/src/bin/CMakeFiles/tend.dir/tend.o.requires

.PHONY : teem/src/bin/CMakeFiles/tend.dir/requires

teem/src/bin/CMakeFiles/tend.dir/clean:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin && $(CMAKE_COMMAND) -P CMakeFiles/tend.dir/cmake_clean.cmake
.PHONY : teem/src/bin/CMakeFiles/tend.dir/clean

teem/src/bin/CMakeFiles/tend.dir/depend:
	cd /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/jwstover/Documents/UChicago/Spring/research/Anim /Users/jwstover/Documents/UChicago/Spring/research/Anim/teem/src/bin /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin /Users/jwstover/Documents/UChicago/Spring/research/Anim/cmake-build-debug/teem/src/bin/CMakeFiles/tend.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : teem/src/bin/CMakeFiles/tend.dir/depend
