# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/zm/XMSrc/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/zm/XMSrc/src/build

# Include any dependencies generated for this target.
include cell/CMakeFiles/cell.dir/depend.make

# Include the progress variables for this target.
include cell/CMakeFiles/cell.dir/progress.make

# Include the compile flags for this target's objects.
include cell/CMakeFiles/cell.dir/flags.make

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o: cell/CMakeFiles/cell.dir/flags.make
cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o: ../cell/AuxVolAcq.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cell.dir/AuxVolAcq.cpp.o -c /home/zm/XMSrc/src/cell/AuxVolAcq.cpp

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cell.dir/AuxVolAcq.cpp.i"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/cell/AuxVolAcq.cpp > CMakeFiles/cell.dir/AuxVolAcq.cpp.i

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cell.dir/AuxVolAcq.cpp.s"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/cell/AuxVolAcq.cpp -o CMakeFiles/cell.dir/AuxVolAcq.cpp.s

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.requires:

.PHONY : cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.requires

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.provides: cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.requires
	$(MAKE) -f cell/CMakeFiles/cell.dir/build.make cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.provides.build
.PHONY : cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.provides

cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.provides.build: cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o


cell/CMakeFiles/cell.dir/Cell.cpp.o: cell/CMakeFiles/cell.dir/flags.make
cell/CMakeFiles/cell.dir/Cell.cpp.o: ../cell/Cell.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object cell/CMakeFiles/cell.dir/Cell.cpp.o"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cell.dir/Cell.cpp.o -c /home/zm/XMSrc/src/cell/Cell.cpp

cell/CMakeFiles/cell.dir/Cell.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cell.dir/Cell.cpp.i"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/cell/Cell.cpp > CMakeFiles/cell.dir/Cell.cpp.i

cell/CMakeFiles/cell.dir/Cell.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cell.dir/Cell.cpp.s"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/cell/Cell.cpp -o CMakeFiles/cell.dir/Cell.cpp.s

cell/CMakeFiles/cell.dir/Cell.cpp.o.requires:

.PHONY : cell/CMakeFiles/cell.dir/Cell.cpp.o.requires

cell/CMakeFiles/cell.dir/Cell.cpp.o.provides: cell/CMakeFiles/cell.dir/Cell.cpp.o.requires
	$(MAKE) -f cell/CMakeFiles/cell.dir/build.make cell/CMakeFiles/cell.dir/Cell.cpp.o.provides.build
.PHONY : cell/CMakeFiles/cell.dir/Cell.cpp.o.provides

cell/CMakeFiles/cell.dir/Cell.cpp.o.provides.build: cell/CMakeFiles/cell.dir/Cell.cpp.o


cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o: cell/CMakeFiles/cell.dir/flags.make
cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o: ../cell/AuxTempAcq.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/cell.dir/AuxTempAcq.cpp.o -c /home/zm/XMSrc/src/cell/AuxTempAcq.cpp

cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cell.dir/AuxTempAcq.cpp.i"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/cell/AuxTempAcq.cpp > CMakeFiles/cell.dir/AuxTempAcq.cpp.i

cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cell.dir/AuxTempAcq.cpp.s"
	cd /home/zm/XMSrc/src/build/cell && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/cell/AuxTempAcq.cpp -o CMakeFiles/cell.dir/AuxTempAcq.cpp.s

cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.requires:

.PHONY : cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.requires

cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.provides: cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.requires
	$(MAKE) -f cell/CMakeFiles/cell.dir/build.make cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.provides.build
.PHONY : cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.provides

cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.provides.build: cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o


# Object files for target cell
cell_OBJECTS = \
"CMakeFiles/cell.dir/AuxVolAcq.cpp.o" \
"CMakeFiles/cell.dir/Cell.cpp.o" \
"CMakeFiles/cell.dir/AuxTempAcq.cpp.o"

# External object files for target cell
cell_EXTERNAL_OBJECTS =

/home/zm/XMSrc/build/cmake/lib/libcell.a: cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o
/home/zm/XMSrc/build/cmake/lib/libcell.a: cell/CMakeFiles/cell.dir/Cell.cpp.o
/home/zm/XMSrc/build/cmake/lib/libcell.a: cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o
/home/zm/XMSrc/build/cmake/lib/libcell.a: cell/CMakeFiles/cell.dir/build.make
/home/zm/XMSrc/build/cmake/lib/libcell.a: cell/CMakeFiles/cell.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX static library /home/zm/XMSrc/build/cmake/lib/libcell.a"
	cd /home/zm/XMSrc/src/build/cell && $(CMAKE_COMMAND) -P CMakeFiles/cell.dir/cmake_clean_target.cmake
	cd /home/zm/XMSrc/src/build/cell && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cell.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
cell/CMakeFiles/cell.dir/build: /home/zm/XMSrc/build/cmake/lib/libcell.a

.PHONY : cell/CMakeFiles/cell.dir/build

cell/CMakeFiles/cell.dir/requires: cell/CMakeFiles/cell.dir/AuxVolAcq.cpp.o.requires
cell/CMakeFiles/cell.dir/requires: cell/CMakeFiles/cell.dir/Cell.cpp.o.requires
cell/CMakeFiles/cell.dir/requires: cell/CMakeFiles/cell.dir/AuxTempAcq.cpp.o.requires

.PHONY : cell/CMakeFiles/cell.dir/requires

cell/CMakeFiles/cell.dir/clean:
	cd /home/zm/XMSrc/src/build/cell && $(CMAKE_COMMAND) -P CMakeFiles/cell.dir/cmake_clean.cmake
.PHONY : cell/CMakeFiles/cell.dir/clean

cell/CMakeFiles/cell.dir/depend:
	cd /home/zm/XMSrc/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zm/XMSrc/src /home/zm/XMSrc/src/cell /home/zm/XMSrc/src/build /home/zm/XMSrc/src/build/cell /home/zm/XMSrc/src/build/cell/CMakeFiles/cell.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : cell/CMakeFiles/cell.dir/depend

