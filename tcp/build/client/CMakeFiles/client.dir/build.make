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

# Include any dependencies generated for this target.
include client/CMakeFiles/client.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include client/CMakeFiles/client.dir/compiler_depend.make

# Include the progress variables for this target.
include client/CMakeFiles/client.dir/progress.make

# Include the compile flags for this target's objects.
include client/CMakeFiles/client.dir/flags.make

client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj: client/CMakeFiles/client.dir/includes_CXX.rsp
client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj: client/client_autogen/mocs_compilation.cpp
client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj: client/CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:\Qt\Qt_Code\Web-Communication\tcp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj -MF CMakeFiles\client.dir\client_autogen\mocs_compilation.cpp.obj.d -o CMakeFiles\client.dir\client_autogen\mocs_compilation.cpp.obj -c F:\Qt\Qt_Code\Web-Communication\tcp\build\client\client_autogen\mocs_compilation.cpp

client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.i"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Qt\Qt_Code\Web-Communication\tcp\build\client\client_autogen\mocs_compilation.cpp > CMakeFiles\client.dir\client_autogen\mocs_compilation.cpp.i

client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.s"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Qt\Qt_Code\Web-Communication\tcp\build\client\client_autogen\mocs_compilation.cpp -o CMakeFiles\client.dir\client_autogen\mocs_compilation.cpp.s

client/CMakeFiles/client.dir/client.cpp.obj: client/CMakeFiles/client.dir/flags.make
client/CMakeFiles/client.dir/client.cpp.obj: client/CMakeFiles/client.dir/includes_CXX.rsp
client/CMakeFiles/client.dir/client.cpp.obj: F:/Qt/Qt_Code/Web-Communication/tcp/client/client.cpp
client/CMakeFiles/client.dir/client.cpp.obj: client/CMakeFiles/client.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=F:\Qt\Qt_Code\Web-Communication\tcp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object client/CMakeFiles/client.dir/client.cpp.obj"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT client/CMakeFiles/client.dir/client.cpp.obj -MF CMakeFiles\client.dir\client.cpp.obj.d -o CMakeFiles\client.dir\client.cpp.obj -c F:\Qt\Qt_Code\Web-Communication\tcp\client\client.cpp

client/CMakeFiles/client.dir/client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/client.dir/client.cpp.i"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E F:\Qt\Qt_Code\Web-Communication\tcp\client\client.cpp > CMakeFiles\client.dir\client.cpp.i

client/CMakeFiles/client.dir/client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/client.dir/client.cpp.s"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && F:\Qt\Qt5.14.2\Tools\mingw730_64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S F:\Qt\Qt_Code\Web-Communication\tcp\client\client.cpp -o CMakeFiles\client.dir\client.cpp.s

# Object files for target client
client_OBJECTS = \
"CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj" \
"CMakeFiles/client.dir/client.cpp.obj"

# External object files for target client
client_EXTERNAL_OBJECTS =

debug/client.exe: client/CMakeFiles/client.dir/client_autogen/mocs_compilation.cpp.obj
debug/client.exe: client/CMakeFiles/client.dir/client.cpp.obj
debug/client.exe: client/CMakeFiles/client.dir/build.make
debug/client.exe: F:/Qt/Qt_Code/Web-Communication/tcp/libs/libtcp.dll.a
debug/client.exe: F:/Qt/Qt5.14.2/5.14.2/mingw73_64/lib/libQt5Network.a
debug/client.exe: F:/Qt/Qt5.14.2/5.14.2/mingw73_64/lib/libQt5Core.a
debug/client.exe: client/CMakeFiles/client.dir/linkLibs.rsp
debug/client.exe: client/CMakeFiles/client.dir/objects1.rsp
debug/client.exe: client/CMakeFiles/client.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=F:\Qt\Qt_Code\Web-Communication\tcp\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ..\debug\client.exe"
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\client.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
client/CMakeFiles/client.dir/build: debug/client.exe
.PHONY : client/CMakeFiles/client.dir/build

client/CMakeFiles/client.dir/clean:
	cd /d F:\Qt\Qt_Code\Web-Communication\tcp\build\client && $(CMAKE_COMMAND) -P CMakeFiles\client.dir\cmake_clean.cmake
.PHONY : client/CMakeFiles/client.dir/clean

client/CMakeFiles/client.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" F:\Qt\Qt_Code\Web-Communication\tcp F:\Qt\Qt_Code\Web-Communication\tcp\client F:\Qt\Qt_Code\Web-Communication\tcp\build F:\Qt\Qt_Code\Web-Communication\tcp\build\client F:\Qt\Qt_Code\Web-Communication\tcp\build\client\CMakeFiles\client.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : client/CMakeFiles/client.dir/depend

