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
include CMakeFiles/lbfs.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lbfs.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lbfs.dir/flags.make

CMakeFiles/lbfs.dir/main.cpp.o: CMakeFiles/lbfs.dir/flags.make
CMakeFiles/lbfs.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lbfs.dir/main.cpp.o"
	g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lbfs.dir/main.cpp.o -c /home/zm/XMSrc/src/main.cpp

CMakeFiles/lbfs.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lbfs.dir/main.cpp.i"
	g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/main.cpp > CMakeFiles/lbfs.dir/main.cpp.i

CMakeFiles/lbfs.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lbfs.dir/main.cpp.s"
	g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/main.cpp -o CMakeFiles/lbfs.dir/main.cpp.s

CMakeFiles/lbfs.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/lbfs.dir/main.cpp.o.requires

CMakeFiles/lbfs.dir/main.cpp.o.provides: CMakeFiles/lbfs.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/lbfs.dir/build.make CMakeFiles/lbfs.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/lbfs.dir/main.cpp.o.provides

CMakeFiles/lbfs.dir/main.cpp.o.provides.build: CMakeFiles/lbfs.dir/main.cpp.o


# Object files for target lbfs
lbfs_OBJECTS = \
"CMakeFiles/lbfs.dir/main.cpp.o"

# External object files for target lbfs
lbfs_EXTERNAL_OBJECTS =

/home/zm/XMSrc/bin/lbfs: CMakeFiles/lbfs.dir/main.cpp.o
/home/zm/XMSrc/bin/lbfs: CMakeFiles/lbfs.dir/build.make
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcom.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcab.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcell.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libchannel.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libpins.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libdcir.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libutility.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libsqlite.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcom.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcab.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libcell.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libchannel.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libpins.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libdcir.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libutility.a
/home/zm/XMSrc/bin/lbfs: /home/zm/XMSrc/build/cmake/lib/libsqlite.a
/home/zm/XMSrc/bin/lbfs: CMakeFiles/lbfs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/zm/XMSrc/bin/lbfs"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lbfs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lbfs.dir/build: /home/zm/XMSrc/bin/lbfs

.PHONY : CMakeFiles/lbfs.dir/build

CMakeFiles/lbfs.dir/requires: CMakeFiles/lbfs.dir/main.cpp.o.requires

.PHONY : CMakeFiles/lbfs.dir/requires

CMakeFiles/lbfs.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lbfs.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lbfs.dir/clean

CMakeFiles/lbfs.dir/depend:
	cd /home/zm/XMSrc/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zm/XMSrc/src /home/zm/XMSrc/src /home/zm/XMSrc/src/build /home/zm/XMSrc/src/build /home/zm/XMSrc/src/build/CMakeFiles/lbfs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lbfs.dir/depend

