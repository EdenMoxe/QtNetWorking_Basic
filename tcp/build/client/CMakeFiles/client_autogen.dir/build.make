# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.27

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = F:\Qt\Qt_Code\Web-Communication\tcp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = F:\Qt\Qt_Code\Web-Communication\tcp\build

# Utility rule file for client_autogen.

# Include any custom commands dependencies for this target.
include client/CMakeFiles/client_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include client/CMakeFiles/client_autogen.dir/progress.make

client/CMakeFiles/client_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=F:\Qt\Qt_Code\Web-Communication\tcp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target client"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && "C:\Program Files\CMake\bin\cmake.exe" -E cmake_autogen F:/Qt/Qt_Code/Web-Communication/tcp/build/client/CMakeFiles/client_autogen.dir/AutogenInfo.json Debug

client_autogen: client/CMakeFiles/client_autogen
client_autogen: client/CMakeFiles/client_autogen.dir/build.make
.PHONY : client_autogen

# Rule to build all files generated by this target.
client/CMakeFiles/client_autogen.dir/build: client_autogen
.PHONY : client/CMakeFiles/client_autogen.dir/build

client/CMakeFiles/client_autogen.dir/clean:
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && $(CMAKE_COMMAND) -P CMakeFiles\client_autogen.dir\cmake_clean.cmake
.PHONY : client/CMakeFiles/client_autogen.dir/clean

client/CMakeFiles/client_autogen.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Qt\Qt_Code\Web-Communication\tcp F:\Qt\Qt_Code\Web-Communication\tcp\client F:\Qt\Qt_Code\Web-Communication\tcp\build F:\Qt\Qt_Code\Web-Communication\tcp\build\client F:\Qt\Qt_Code\Web-Communication\tcp\build\client\CMakeFiles\client_autogen.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : client/CMakeFiles/client_autogen.dir/depend

