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
include CMakeFiles/Neuron.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Neuron.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Neuron.dir/flags.make

CMakeFiles/Neuron.dir/Neuron.cpp.o: CMakeFiles/Neuron.dir/flags.make
CMakeFiles/Neuron.dir/Neuron.cpp.o: Neuron.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron.dir/Neuron.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron.dir/Neuron.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp

CMakeFiles/Neuron.dir/Neuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron.dir/Neuron.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp > CMakeFiles/Neuron.dir/Neuron.cpp.i

CMakeFiles/Neuron.dir/Neuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron.dir/Neuron.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Neuron.cpp -o CMakeFiles/Neuron.dir/Neuron.cpp.s

CMakeFiles/Neuron.dir/Neuron.cpp.o.requires:
.PHONY : CMakeFiles/Neuron.dir/Neuron.cpp.o.requires

CMakeFiles/Neuron.dir/Neuron.cpp.o.provides: CMakeFiles/Neuron.dir/Neuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron.dir/build.make CMakeFiles/Neuron.dir/Neuron.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron.dir/Neuron.cpp.o.provides

CMakeFiles/Neuron.dir/Neuron.cpp.o.provides.build: CMakeFiles/Neuron.dir/Neuron.cpp.o

CMakeFiles/Neuron.dir/Network.cpp.o: CMakeFiles/Neuron.dir/flags.make
CMakeFiles/Neuron.dir/Network.cpp.o: Network.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron.dir/Network.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron.dir/Network.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp

CMakeFiles/Neuron.dir/Network.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron.dir/Network.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp > CMakeFiles/Neuron.dir/Network.cpp.i

CMakeFiles/Neuron.dir/Network.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron.dir/Network.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/Network.cpp -o CMakeFiles/Neuron.dir/Network.cpp.s

CMakeFiles/Neuron.dir/Network.cpp.o.requires:
.PHONY : CMakeFiles/Neuron.dir/Network.cpp.o.requires

CMakeFiles/Neuron.dir/Network.cpp.o.provides: CMakeFiles/Neuron.dir/Network.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron.dir/build.make CMakeFiles/Neuron.dir/Network.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron.dir/Network.cpp.o.provides

CMakeFiles/Neuron.dir/Network.cpp.o.provides.build: CMakeFiles/Neuron.dir/Network.cpp.o

CMakeFiles/Neuron.dir/mainNeuron.cpp.o: CMakeFiles/Neuron.dir/flags.make
CMakeFiles/Neuron.dir/mainNeuron.cpp.o: mainNeuron.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Neuron.dir/mainNeuron.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/Neuron.dir/mainNeuron.cpp.o -c /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/mainNeuron.cpp

CMakeFiles/Neuron.dir/mainNeuron.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Neuron.dir/mainNeuron.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/mainNeuron.cpp > CMakeFiles/Neuron.dir/mainNeuron.cpp.i

CMakeFiles/Neuron.dir/mainNeuron.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Neuron.dir/mainNeuron.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/mainNeuron.cpp -o CMakeFiles/Neuron.dir/mainNeuron.cpp.s

CMakeFiles/Neuron.dir/mainNeuron.cpp.o.requires:
.PHONY : CMakeFiles/Neuron.dir/mainNeuron.cpp.o.requires

CMakeFiles/Neuron.dir/mainNeuron.cpp.o.provides: CMakeFiles/Neuron.dir/mainNeuron.cpp.o.requires
	$(MAKE) -f CMakeFiles/Neuron.dir/build.make CMakeFiles/Neuron.dir/mainNeuron.cpp.o.provides.build
.PHONY : CMakeFiles/Neuron.dir/mainNeuron.cpp.o.provides

CMakeFiles/Neuron.dir/mainNeuron.cpp.o.provides.build: CMakeFiles/Neuron.dir/mainNeuron.cpp.o

# Object files for target Neuron
Neuron_OBJECTS = \
"CMakeFiles/Neuron.dir/Neuron.cpp.o" \
"CMakeFiles/Neuron.dir/Network.cpp.o" \
"CMakeFiles/Neuron.dir/mainNeuron.cpp.o"

# External object files for target Neuron
Neuron_EXTERNAL_OBJECTS =

Neuron: CMakeFiles/Neuron.dir/Neuron.cpp.o
Neuron: CMakeFiles/Neuron.dir/Network.cpp.o
Neuron: CMakeFiles/Neuron.dir/mainNeuron.cpp.o
Neuron: CMakeFiles/Neuron.dir/build.make
Neuron: CMakeFiles/Neuron.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable Neuron"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Neuron.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Neuron.dir/build: Neuron
.PHONY : CMakeFiles/Neuron.dir/build

CMakeFiles/Neuron.dir/requires: CMakeFiles/Neuron.dir/Neuron.cpp.o.requires
CMakeFiles/Neuron.dir/requires: CMakeFiles/Neuron.dir/Network.cpp.o.requires
CMakeFiles/Neuron.dir/requires: CMakeFiles/Neuron.dir/mainNeuron.cpp.o.requires
.PHONY : CMakeFiles/Neuron.dir/requires

CMakeFiles/Neuron.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Neuron.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Neuron.dir/clean

CMakeFiles/Neuron.dir/depend:
	cd /home/INTRANET/lschmidt/myfiles/cppba3/Neuron && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron /home/INTRANET/lschmidt/myfiles/cppba3/Neuron/CMakeFiles/Neuron.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Neuron.dir/depend

