# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/ubuntu/Desktop/transpiler

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Desktop/transpiler/build3

# Utility rule file for DEPENDS.

# Include any custom commands dependencies for this target.
include CMakeFiles/DEPENDS.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DEPENDS.dir/progress.make

CMakeFiles/DEPENDS:
	antlr4cpp

DEPENDS: CMakeFiles/DEPENDS
DEPENDS: CMakeFiles/DEPENDS.dir/build.make
.PHONY : DEPENDS

# Rule to build all files generated by this target.
CMakeFiles/DEPENDS.dir/build: DEPENDS
.PHONY : CMakeFiles/DEPENDS.dir/build

CMakeFiles/DEPENDS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DEPENDS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DEPENDS.dir/clean

CMakeFiles/DEPENDS.dir/depend:
	cd /home/ubuntu/Desktop/transpiler/build3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Desktop/transpiler /home/ubuntu/Desktop/transpiler /home/ubuntu/Desktop/transpiler/build3 /home/ubuntu/Desktop/transpiler/build3 /home/ubuntu/Desktop/transpiler/build3/CMakeFiles/DEPENDS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DEPENDS.dir/depend

