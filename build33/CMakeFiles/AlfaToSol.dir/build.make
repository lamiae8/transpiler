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
CMAKE_SOURCE_DIR = /home/lamiae/Downloads/transpiler-main

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lamiae/Downloads/transpiler-main/build3

# Include any dependencies generated for this target.
include CMakeFiles/AlfaToSol.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/AlfaToSol.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/AlfaToSol.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/AlfaToSol.dir/flags.make

CMakeFiles/AlfaToSol.dir/main.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/main.cpp.o: ../main.cpp
CMakeFiles/AlfaToSol.dir/main.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/AlfaToSol.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/main.cpp.o -MF CMakeFiles/AlfaToSol.dir/main.cpp.o.d -o CMakeFiles/AlfaToSol.dir/main.cpp.o -c /home/lamiae/Downloads/transpiler-main/main.cpp

CMakeFiles/AlfaToSol.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/main.cpp > CMakeFiles/AlfaToSol.dir/main.cpp.i

CMakeFiles/AlfaToSol.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/main.cpp -o CMakeFiles/AlfaToSol.dir/main.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.s

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o: antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp
CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -MD -MT CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o -MF CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o.d -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o -c /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -E /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp > CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.i

CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -Wno-overloaded-virtual -S /home/lamiae/Downloads/transpiler-main/build3/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp -o CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o: ../grammar/src/ALFABaseListener.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseListener.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseListener.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseListener.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o: ../grammar/src/ALFABaseVisitor.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseVisitor.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseVisitor.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFABaseVisitor.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o: ../grammar/src/ALFALexer.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFALexer.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFALexer.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFALexer.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o: ../grammar/src/ALFAListener.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAListener.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAListener.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAListener.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o: ../grammar/src/ALFAParser.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAParser.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAParser.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAParser.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o: ../grammar/src/ALFAVisitor.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAVisitor.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAVisitor.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/ALFAVisitor.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.s

CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o: CMakeFiles/AlfaToSol.dir/flags.make
CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o: ../grammar/src/EnvironmentFunctions.cpp
CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o: CMakeFiles/AlfaToSol.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o -MF CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o.d -o CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o -c /home/lamiae/Downloads/transpiler-main/grammar/src/EnvironmentFunctions.cpp

CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lamiae/Downloads/transpiler-main/grammar/src/EnvironmentFunctions.cpp > CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.i

CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lamiae/Downloads/transpiler-main/grammar/src/EnvironmentFunctions.cpp -o CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.s

# Object files for target AlfaToSol
AlfaToSol_OBJECTS = \
"CMakeFiles/AlfaToSol.dir/main.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o" \
"CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o" \
"CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o"

# External object files for target AlfaToSol
AlfaToSol_EXTERNAL_OBJECTS =

AlfaToSol: CMakeFiles/AlfaToSol.dir/main.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseListener.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFABaseVisitor.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFALexer.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAListener.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAParser.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/antlr4cpp_generated_src/antlrcpptest/ALFAVisitor.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseListener.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFABaseVisitor.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFALexer.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFAListener.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFAParser.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/ALFAVisitor.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/grammar/src/EnvironmentFunctions.cpp.o
AlfaToSol: CMakeFiles/AlfaToSol.dir/build.make
AlfaToSol: CMakeFiles/AlfaToSol.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lamiae/Downloads/transpiler-main/build3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Linking CXX executable AlfaToSol"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/AlfaToSol.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/AlfaToSol.dir/build: AlfaToSol
.PHONY : CMakeFiles/AlfaToSol.dir/build

CMakeFiles/AlfaToSol.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/AlfaToSol.dir/cmake_clean.cmake
.PHONY : CMakeFiles/AlfaToSol.dir/clean

CMakeFiles/AlfaToSol.dir/depend:
	cd /home/lamiae/Downloads/transpiler-main/build3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lamiae/Downloads/transpiler-main /home/lamiae/Downloads/transpiler-main /home/lamiae/Downloads/transpiler-main/build3 /home/lamiae/Downloads/transpiler-main/build3 /home/lamiae/Downloads/transpiler-main/build3/CMakeFiles/AlfaToSol.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/AlfaToSol.dir/depend

