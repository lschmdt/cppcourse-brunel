# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/INTRANET/lschmidt/myfiles/cppba3/Neuron

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/INTRANET/lschmidt/myfiles/cppba3/Neuron

# Include any dependencies generated for this target.
include gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include gtest/CMakeFiles/gtest_main.dir/flags.make

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: gtest/CMakeFiles/gtest_main.dir/flags.make
gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: gtest/src/gtest_main.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest/src/gtest_main.cc

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires:
.PHONY : gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides: gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
	$(MAKE) -f gtest/CMakeFiles/gtest_main.dir/build.make gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build
.PHONY : gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides

gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.provides.build: gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

gtest/libgtest_main.a: gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
gtest/libgtest_main.a: gtest/CMakeFiles/gtest_main.dir/build.make
gtest/libgtest_main.a: gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgtest_main.a"
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
gtest/CMakeFiles/gtest_main.dir/build: gtest/libgtest_main.a
.PHONY : gtest/CMakeFiles/gtest_main.dir/build

gtest/CMakeFiles/gtest_main.dir/requires: gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o.requires
.PHONY : gtest/CMakeFiles/gtest_main.dir/requires

gtest/CMakeFiles/gtest_main.dir/clean:
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : gtest/CMakeFiles/gtest_main.dir/clean

gtest/CMakeFiles/gtest_main.dir/depend:
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : gtest/CMakeFiles/gtest_main.dir/depend

