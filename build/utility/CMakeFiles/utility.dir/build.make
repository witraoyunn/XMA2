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
CMAKE_BINARY_DIR = /home/zm/XMSrc/build

# Include any dependencies generated for this target.
include utility/CMakeFiles/utility.dir/depend.make

# Include the progress variables for this target.
include utility/CMakeFiles/utility.dir/progress.make

# Include the compile flags for this target's objects.
include utility/CMakeFiles/utility.dir/flags.make

utility/CMakeFiles/utility.dir/utility.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/utility.cpp.o: /home/zm/XMSrc/src/utility/utility.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object utility/CMakeFiles/utility.dir/utility.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/utility.cpp.o -c /home/zm/XMSrc/src/utility/utility.cpp

utility/CMakeFiles/utility.dir/utility.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/utility.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/utility.cpp > CMakeFiles/utility.dir/utility.cpp.i

utility/CMakeFiles/utility.dir/utility.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/utility.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/utility.cpp -o CMakeFiles/utility.dir/utility.cpp.s

utility/CMakeFiles/utility.dir/utility.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/utility.cpp.o.requires

utility/CMakeFiles/utility.dir/utility.cpp.o.provides: utility/CMakeFiles/utility.dir/utility.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/utility.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/utility.cpp.o.provides

utility/CMakeFiles/utility.dir/utility.cpp.o.provides.build: utility/CMakeFiles/utility.dir/utility.cpp.o


utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o: /home/zm/XMSrc/src/utility/SLMPDriver.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/SLMPDriver.cpp.o -c /home/zm/XMSrc/src/utility/SLMPDriver.cpp

utility/CMakeFiles/utility.dir/SLMPDriver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/SLMPDriver.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/SLMPDriver.cpp > CMakeFiles/utility.dir/SLMPDriver.cpp.i

utility/CMakeFiles/utility.dir/SLMPDriver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/SLMPDriver.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/SLMPDriver.cpp -o CMakeFiles/utility.dir/SLMPDriver.cpp.s

utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.requires

utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.provides: utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.provides

utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.provides.build: utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o


utility/CMakeFiles/utility.dir/GNSocket.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/GNSocket.cpp.o: /home/zm/XMSrc/src/utility/GNSocket.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object utility/CMakeFiles/utility.dir/GNSocket.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/GNSocket.cpp.o -c /home/zm/XMSrc/src/utility/GNSocket.cpp

utility/CMakeFiles/utility.dir/GNSocket.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/GNSocket.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/GNSocket.cpp > CMakeFiles/utility.dir/GNSocket.cpp.i

utility/CMakeFiles/utility.dir/GNSocket.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/GNSocket.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/GNSocket.cpp -o CMakeFiles/utility.dir/GNSocket.cpp.s

utility/CMakeFiles/utility.dir/GNSocket.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/GNSocket.cpp.o.requires

utility/CMakeFiles/utility.dir/GNSocket.cpp.o.provides: utility/CMakeFiles/utility.dir/GNSocket.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/GNSocket.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/GNSocket.cpp.o.provides

utility/CMakeFiles/utility.dir/GNSocket.cpp.o.provides.build: utility/CMakeFiles/utility.dir/GNSocket.cpp.o


utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o: /home/zm/XMSrc/src/utility/CANSocketStack.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/CANSocketStack.cpp.o -c /home/zm/XMSrc/src/utility/CANSocketStack.cpp

utility/CMakeFiles/utility.dir/CANSocketStack.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/CANSocketStack.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/CANSocketStack.cpp > CMakeFiles/utility.dir/CANSocketStack.cpp.i

utility/CMakeFiles/utility.dir/CANSocketStack.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/CANSocketStack.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/CANSocketStack.cpp -o CMakeFiles/utility.dir/CANSocketStack.cpp.s

utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.requires

utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.provides: utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.provides

utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.provides.build: utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o


utility/CMakeFiles/utility.dir/EpollMan.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/EpollMan.cpp.o: /home/zm/XMSrc/src/utility/EpollMan.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object utility/CMakeFiles/utility.dir/EpollMan.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/EpollMan.cpp.o -c /home/zm/XMSrc/src/utility/EpollMan.cpp

utility/CMakeFiles/utility.dir/EpollMan.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/EpollMan.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/EpollMan.cpp > CMakeFiles/utility.dir/EpollMan.cpp.i

utility/CMakeFiles/utility.dir/EpollMan.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/EpollMan.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/EpollMan.cpp -o CMakeFiles/utility.dir/EpollMan.cpp.s

utility/CMakeFiles/utility.dir/EpollMan.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/EpollMan.cpp.o.requires

utility/CMakeFiles/utility.dir/EpollMan.cpp.o.provides: utility/CMakeFiles/utility.dir/EpollMan.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/EpollMan.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/EpollMan.cpp.o.provides

utility/CMakeFiles/utility.dir/EpollMan.cpp.o.provides.build: utility/CMakeFiles/utility.dir/EpollMan.cpp.o


utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o: /home/zm/XMSrc/src/utility/TcpServerMonitor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/TcpServerMonitor.cpp.o -c /home/zm/XMSrc/src/utility/TcpServerMonitor.cpp

utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/TcpServerMonitor.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/TcpServerMonitor.cpp > CMakeFiles/utility.dir/TcpServerMonitor.cpp.i

utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/TcpServerMonitor.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/TcpServerMonitor.cpp -o CMakeFiles/utility.dir/TcpServerMonitor.cpp.s

utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.requires

utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.provides: utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.provides

utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.provides.build: utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o


utility/CMakeFiles/utility.dir/GNMessager.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/GNMessager.cpp.o: /home/zm/XMSrc/src/utility/GNMessager.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object utility/CMakeFiles/utility.dir/GNMessager.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/GNMessager.cpp.o -c /home/zm/XMSrc/src/utility/GNMessager.cpp

utility/CMakeFiles/utility.dir/GNMessager.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/GNMessager.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/GNMessager.cpp > CMakeFiles/utility.dir/GNMessager.cpp.i

utility/CMakeFiles/utility.dir/GNMessager.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/GNMessager.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/GNMessager.cpp -o CMakeFiles/utility.dir/GNMessager.cpp.s

utility/CMakeFiles/utility.dir/GNMessager.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/GNMessager.cpp.o.requires

utility/CMakeFiles/utility.dir/GNMessager.cpp.o.provides: utility/CMakeFiles/utility.dir/GNMessager.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/GNMessager.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/GNMessager.cpp.o.provides

utility/CMakeFiles/utility.dir/GNMessager.cpp.o.provides.build: utility/CMakeFiles/utility.dir/GNMessager.cpp.o


utility/CMakeFiles/utility.dir/log4z.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/log4z.cpp.o: /home/zm/XMSrc/src/utility/log4z.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object utility/CMakeFiles/utility.dir/log4z.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/log4z.cpp.o -c /home/zm/XMSrc/src/utility/log4z.cpp

utility/CMakeFiles/utility.dir/log4z.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/log4z.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/log4z.cpp > CMakeFiles/utility.dir/log4z.cpp.i

utility/CMakeFiles/utility.dir/log4z.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/log4z.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/log4z.cpp -o CMakeFiles/utility.dir/log4z.cpp.s

utility/CMakeFiles/utility.dir/log4z.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/log4z.cpp.o.requires

utility/CMakeFiles/utility.dir/log4z.cpp.o.provides: utility/CMakeFiles/utility.dir/log4z.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/log4z.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/log4z.cpp.o.provides

utility/CMakeFiles/utility.dir/log4z.cpp.o.provides.build: utility/CMakeFiles/utility.dir/log4z.cpp.o


utility/CMakeFiles/utility.dir/S7Client.cpp.o: utility/CMakeFiles/utility.dir/flags.make
utility/CMakeFiles/utility.dir/S7Client.cpp.o: /home/zm/XMSrc/src/utility/S7Client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object utility/CMakeFiles/utility.dir/S7Client.cpp.o"
	cd /home/zm/XMSrc/build/utility && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/utility.dir/S7Client.cpp.o -c /home/zm/XMSrc/src/utility/S7Client.cpp

utility/CMakeFiles/utility.dir/S7Client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/utility.dir/S7Client.cpp.i"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/utility/S7Client.cpp > CMakeFiles/utility.dir/S7Client.cpp.i

utility/CMakeFiles/utility.dir/S7Client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/utility.dir/S7Client.cpp.s"
	cd /home/zm/XMSrc/build/utility && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/utility/S7Client.cpp -o CMakeFiles/utility.dir/S7Client.cpp.s

utility/CMakeFiles/utility.dir/S7Client.cpp.o.requires:

.PHONY : utility/CMakeFiles/utility.dir/S7Client.cpp.o.requires

utility/CMakeFiles/utility.dir/S7Client.cpp.o.provides: utility/CMakeFiles/utility.dir/S7Client.cpp.o.requires
	$(MAKE) -f utility/CMakeFiles/utility.dir/build.make utility/CMakeFiles/utility.dir/S7Client.cpp.o.provides.build
.PHONY : utility/CMakeFiles/utility.dir/S7Client.cpp.o.provides

utility/CMakeFiles/utility.dir/S7Client.cpp.o.provides.build: utility/CMakeFiles/utility.dir/S7Client.cpp.o


# Object files for target utility
utility_OBJECTS = \
"CMakeFiles/utility.dir/utility.cpp.o" \
"CMakeFiles/utility.dir/SLMPDriver.cpp.o" \
"CMakeFiles/utility.dir/GNSocket.cpp.o" \
"CMakeFiles/utility.dir/CANSocketStack.cpp.o" \
"CMakeFiles/utility.dir/EpollMan.cpp.o" \
"CMakeFiles/utility.dir/TcpServerMonitor.cpp.o" \
"CMakeFiles/utility.dir/GNMessager.cpp.o" \
"CMakeFiles/utility.dir/log4z.cpp.o" \
"CMakeFiles/utility.dir/S7Client.cpp.o"

# External object files for target utility
utility_EXTERNAL_OBJECTS =

cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/utility.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/GNSocket.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/EpollMan.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/GNMessager.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/log4z.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/S7Client.cpp.o
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/build.make
cmake/lib/libutility.a: utility/CMakeFiles/utility.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zm/XMSrc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX static library ../cmake/lib/libutility.a"
	cd /home/zm/XMSrc/build/utility && $(CMAKE_COMMAND) -P CMakeFiles/utility.dir/cmake_clean_target.cmake
	cd /home/zm/XMSrc/build/utility && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/utility.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
utility/CMakeFiles/utility.dir/build: cmake/lib/libutility.a

.PHONY : utility/CMakeFiles/utility.dir/build

utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/utility.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/SLMPDriver.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/GNSocket.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/CANSocketStack.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/EpollMan.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/TcpServerMonitor.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/GNMessager.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/log4z.cpp.o.requires
utility/CMakeFiles/utility.dir/requires: utility/CMakeFiles/utility.dir/S7Client.cpp.o.requires

.PHONY : utility/CMakeFiles/utility.dir/requires

utility/CMakeFiles/utility.dir/clean:
	cd /home/zm/XMSrc/build/utility && $(CMAKE_COMMAND) -P CMakeFiles/utility.dir/cmake_clean.cmake
.PHONY : utility/CMakeFiles/utility.dir/clean

utility/CMakeFiles/utility.dir/depend:
	cd /home/zm/XMSrc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zm/XMSrc/src /home/zm/XMSrc/src/utility /home/zm/XMSrc/build /home/zm/XMSrc/build/utility /home/zm/XMSrc/build/utility/CMakeFiles/utility.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : utility/CMakeFiles/utility.dir/depend
