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
CMAKE_BINARY_DIR = /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build

# Include any dependencies generated for this target.
include CMakeFiles/Neuron_unittest1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Neuron_unittest1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Neuron_unittest1.dir/flags.make

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o: CMakeFiles/Neuron_unittest1.dir/flags.make
CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o: ../Neuron.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp > CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.i

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp -o CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.s

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.requires:
.PHONY : CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.requires

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.provides: CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron_unittest1.dir/build.make CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.provides

CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.provides.build: CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o

CMakeFiles/Neuron_unittest1.dir/Network.cpp.o: CMakeFiles/Neuron_unittest1.dir/flags.make
CMakeFiles/Neuron_unittest1.dir/Network.cpp.o: ../Network.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron_unittest1.dir/Network.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron_unittest1.dir/Network.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp

CMakeFiles/Neuron_unittest1.dir/Network.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron_unittest1.dir/Network.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp > CMakeFiles/Neuron_unittest1.dir/Network.cpp.i

CMakeFiles/Neuron_unittest1.dir/Network.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron_unittest1.dir/Network.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp -o CMakeFiles/Neuron_unittest1.dir/Network.cpp.s

CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.requires:
.PHONY : CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.requires

CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.provides: CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron_unittest1.dir/build.make CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.provides

CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.provides.build: CMakeFiles/Neuron_unittest1.dir/Network.cpp.o

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o: CMakeFiles/Neuron_unittest1.dir/flags.make
CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o: ../Unittest1.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Unittest1.cpp

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Unittest1.cpp > CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.i

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Unittest1.cpp -o CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.s

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.requires:
.PHONY : CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.requires

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.provides: CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron_unittest1.dir/build.make CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.provides

CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.provides.build: CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o

# Object files for target Neuron_unittest1
Neuron_unittest1_OBJECTS = \
"CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o" \
"CMakeFiles/Neuron_unittest1.dir/Network.cpp.o" \
"CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o"

# External object files for target Neuron_unittest1
Neuron_unittest1_EXTERNAL_OBJECTS =

Neuron_unittest1: CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o
Neuron_unittest1: CMakeFiles/Neuron_unittest1.dir/Network.cpp.o
Neuron_unittest1: CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o
Neuron_unittest1: CMakeFiles/Neuron_unittest1.dir/build.make
Neuron_unittest1: gtest/libgtest.a
Neuron_unittest1: gtest/libgtest_main.a
Neuron_unittest1: gtest/libgtest.a
Neuron_unittest1: CMakeFiles/Neuron_unittest1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Neuron_unittest1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Neuron_unittest1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Neuron_unittest1.dir/build: Neuron_unittest1
.PHONY : CMakeFiles/Neuron_unittest1.dir/build

CMakeFiles/Neuron_unittest1.dir/requires: CMakeFiles/Neuron_unittest1.dir/Neuron.cpp.o.requires
CMakeFiles/Neuron_unittest1.dir/requires: CMakeFiles/Neuron_unittest1.dir/Network.cpp.o.requires
CMakeFiles/Neuron_unittest1.dir/requires: CMakeFiles/Neuron_unittest1.dir/Unittest1.cpp.o.requires
.PHONY : CMakeFiles/Neuron_unittest1.dir/requires

CMakeFiles/Neuron_unittest1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Neuron_unittest1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Neuron_unittest1.dir/clean

CMakeFiles/Neuron_unittest1.dir/depend:
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/build/CMakeFiles/Neuron_unittest1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Neuron_unittest1.dir/depend
