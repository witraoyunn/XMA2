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
include channel/CMakeFiles/channel.dir/depend.make

# Include the progress variables for this target.
include channel/CMakeFiles/channel.dir/progress.make

# Include the compile flags for this target's objects.
include channel/CMakeFiles/channel.dir/flags.make

channel/CMakeFiles/channel.dir/ChannelState.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/ChannelState.cpp.o: ../channel/ChannelState.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object channel/CMakeFiles/channel.dir/ChannelState.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/ChannelState.cpp.o -c /home/zm/XMSrc/src/channel/ChannelState.cpp

channel/CMakeFiles/channel.dir/ChannelState.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/ChannelState.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/ChannelState.cpp > CMakeFiles/channel.dir/ChannelState.cpp.i

channel/CMakeFiles/channel.dir/ChannelState.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/ChannelState.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/ChannelState.cpp -o CMakeFiles/channel.dir/ChannelState.cpp.s

channel/CMakeFiles/channel.dir/ChannelState.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/ChannelState.cpp.o.requires

channel/CMakeFiles/channel.dir/ChannelState.cpp.o.provides: channel/CMakeFiles/channel.dir/ChannelState.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/ChannelState.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/ChannelState.cpp.o.provides

channel/CMakeFiles/channel.dir/ChannelState.cpp.o.provides.build: channel/CMakeFiles/channel.dir/ChannelState.cpp.o


channel/CMakeFiles/channel.dir/Channel.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/Channel.cpp.o: ../channel/Channel.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object channel/CMakeFiles/channel.dir/Channel.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/Channel.cpp.o -c /home/zm/XMSrc/src/channel/Channel.cpp

channel/CMakeFiles/channel.dir/Channel.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/Channel.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/Channel.cpp > CMakeFiles/channel.dir/Channel.cpp.i

channel/CMakeFiles/channel.dir/Channel.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/Channel.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/Channel.cpp -o CMakeFiles/channel.dir/Channel.cpp.s

channel/CMakeFiles/channel.dir/Channel.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/Channel.cpp.o.requires

channel/CMakeFiles/channel.dir/Channel.cpp.o.provides: channel/CMakeFiles/channel.dir/Channel.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/Channel.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/Channel.cpp.o.provides

channel/CMakeFiles/channel.dir/Channel.cpp.o.provides.build: channel/CMakeFiles/channel.dir/Channel.cpp.o


channel/CMakeFiles/channel.dir/ChannelServer.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/ChannelServer.cpp.o: ../channel/ChannelServer.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object channel/CMakeFiles/channel.dir/ChannelServer.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/ChannelServer.cpp.o -c /home/zm/XMSrc/src/channel/ChannelServer.cpp

channel/CMakeFiles/channel.dir/ChannelServer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/ChannelServer.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/ChannelServer.cpp > CMakeFiles/channel.dir/ChannelServer.cpp.i

channel/CMakeFiles/channel.dir/ChannelServer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/ChannelServer.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/ChannelServer.cpp -o CMakeFiles/channel.dir/ChannelServer.cpp.s

channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.requires

channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.provides: channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.provides

channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.provides.build: channel/CMakeFiles/channel.dir/ChannelServer.cpp.o


channel/CMakeFiles/channel.dir/StepException.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/StepException.cpp.o: ../channel/StepException.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object channel/CMakeFiles/channel.dir/StepException.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/StepException.cpp.o -c /home/zm/XMSrc/src/channel/StepException.cpp

channel/CMakeFiles/channel.dir/StepException.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/StepException.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/StepException.cpp > CMakeFiles/channel.dir/StepException.cpp.i

channel/CMakeFiles/channel.dir/StepException.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/StepException.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/StepException.cpp -o CMakeFiles/channel.dir/StepException.cpp.s

channel/CMakeFiles/channel.dir/StepException.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/StepException.cpp.o.requires

channel/CMakeFiles/channel.dir/StepException.cpp.o.provides: channel/CMakeFiles/channel.dir/StepException.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/StepException.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/StepException.cpp.o.provides

channel/CMakeFiles/channel.dir/StepException.cpp.o.provides.build: channel/CMakeFiles/channel.dir/StepException.cpp.o


channel/CMakeFiles/channel.dir/GlobalException.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/GlobalException.cpp.o: ../channel/GlobalException.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object channel/CMakeFiles/channel.dir/GlobalException.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/GlobalException.cpp.o -c /home/zm/XMSrc/src/channel/GlobalException.cpp

channel/CMakeFiles/channel.dir/GlobalException.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/GlobalException.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/GlobalException.cpp > CMakeFiles/channel.dir/GlobalException.cpp.i

channel/CMakeFiles/channel.dir/GlobalException.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/GlobalException.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/GlobalException.cpp -o CMakeFiles/channel.dir/GlobalException.cpp.s

channel/CMakeFiles/channel.dir/GlobalException.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/GlobalException.cpp.o.requires

channel/CMakeFiles/channel.dir/GlobalException.cpp.o.provides: channel/CMakeFiles/channel.dir/GlobalException.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/GlobalException.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/GlobalException.cpp.o.provides

channel/CMakeFiles/channel.dir/GlobalException.cpp.o.provides.build: channel/CMakeFiles/channel.dir/GlobalException.cpp.o


channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o: ../channel/ChannelProto_JN9504.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o -c /home/zm/XMSrc/src/channel/ChannelProto_JN9504.cpp

channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/ChannelProto_JN9504.cpp > CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.i

channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/ChannelProto_JN9504.cpp -o CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.s

channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.requires

channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.provides: channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.provides

channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.provides.build: channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o


channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o: ../channel/ReplyHandler.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/ReplyHandler.cpp.o -c /home/zm/XMSrc/src/channel/ReplyHandler.cpp

channel/CMakeFiles/channel.dir/ReplyHandler.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/ReplyHandler.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/ReplyHandler.cpp > CMakeFiles/channel.dir/ReplyHandler.cpp.i

channel/CMakeFiles/channel.dir/ReplyHandler.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/ReplyHandler.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/ReplyHandler.cpp -o CMakeFiles/channel.dir/ReplyHandler.cpp.s

channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.requires

channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.provides: channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.provides

channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.provides.build: channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o


channel/CMakeFiles/channel.dir/Serialize.cpp.o: channel/CMakeFiles/channel.dir/flags.make
channel/CMakeFiles/channel.dir/Serialize.cpp.o: ../channel/Serialize.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object channel/CMakeFiles/channel.dir/Serialize.cpp.o"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/channel.dir/Serialize.cpp.o -c /home/zm/XMSrc/src/channel/Serialize.cpp

channel/CMakeFiles/channel.dir/Serialize.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/channel.dir/Serialize.cpp.i"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/zm/XMSrc/src/channel/Serialize.cpp > CMakeFiles/channel.dir/Serialize.cpp.i

channel/CMakeFiles/channel.dir/Serialize.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/channel.dir/Serialize.cpp.s"
	cd /home/zm/XMSrc/src/build/channel && g++-4.8  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/zm/XMSrc/src/channel/Serialize.cpp -o CMakeFiles/channel.dir/Serialize.cpp.s

channel/CMakeFiles/channel.dir/Serialize.cpp.o.requires:

.PHONY : channel/CMakeFiles/channel.dir/Serialize.cpp.o.requires

channel/CMakeFiles/channel.dir/Serialize.cpp.o.provides: channel/CMakeFiles/channel.dir/Serialize.cpp.o.requires
	$(MAKE) -f channel/CMakeFiles/channel.dir/build.make channel/CMakeFiles/channel.dir/Serialize.cpp.o.provides.build
.PHONY : channel/CMakeFiles/channel.dir/Serialize.cpp.o.provides

channel/CMakeFiles/channel.dir/Serialize.cpp.o.provides.build: channel/CMakeFiles/channel.dir/Serialize.cpp.o


# Object files for target channel
channel_OBJECTS = \
"CMakeFiles/channel.dir/ChannelState.cpp.o" \
"CMakeFiles/channel.dir/Channel.cpp.o" \
"CMakeFiles/channel.dir/ChannelServer.cpp.o" \
"CMakeFiles/channel.dir/StepException.cpp.o" \
"CMakeFiles/channel.dir/GlobalException.cpp.o" \
"CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o" \
"CMakeFiles/channel.dir/ReplyHandler.cpp.o" \
"CMakeFiles/channel.dir/Serialize.cpp.o"

# External object files for target channel
channel_EXTERNAL_OBJECTS =

/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/ChannelState.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/Channel.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/ChannelServer.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/StepException.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/GlobalException.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/Serialize.cpp.o
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/build.make
/home/zm/XMSrc/build/cmake/lib/libchannel.a: channel/CMakeFiles/channel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/zm/XMSrc/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX static library /home/zm/XMSrc/build/cmake/lib/libchannel.a"
	cd /home/zm/XMSrc/src/build/channel && $(CMAKE_COMMAND) -P CMakeFiles/channel.dir/cmake_clean_target.cmake
	cd /home/zm/XMSrc/src/build/channel && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/channel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
channel/CMakeFiles/channel.dir/build: /home/zm/XMSrc/build/cmake/lib/libchannel.a

.PHONY : channel/CMakeFiles/channel.dir/build

channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/ChannelState.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/Channel.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/ChannelServer.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/StepException.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/GlobalException.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/ChannelProto_JN9504.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/ReplyHandler.cpp.o.requires
channel/CMakeFiles/channel.dir/requires: channel/CMakeFiles/channel.dir/Serialize.cpp.o.requires

.PHONY : channel/CMakeFiles/channel.dir/requires

channel/CMakeFiles/channel.dir/clean:
	cd /home/zm/XMSrc/src/build/channel && $(CMAKE_COMMAND) -P CMakeFiles/channel.dir/cmake_clean.cmake
.PHONY : channel/CMakeFiles/channel.dir/clean

channel/CMakeFiles/channel.dir/depend:
	cd /home/zm/XMSrc/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/zm/XMSrc/src /home/zm/XMSrc/src/channel /home/zm/XMSrc/src/build /home/zm/XMSrc/src/build/channel /home/zm/XMSrc/src/build/channel/CMakeFiles/channel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : channel/CMakeFiles/channel.dir/depend
