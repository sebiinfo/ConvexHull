# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_SOURCE_DIR = /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull

# Include any dependencies generated for this target.
include CMakeFiles/quick_hull.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/quick_hull.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/quick_hull.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/quick_hull.dir/flags.make

CMakeFiles/quick_hull.dir/QuickHull.cpp.o: CMakeFiles/quick_hull.dir/flags.make
CMakeFiles/quick_hull.dir/QuickHull.cpp.o: QuickHull.cpp
CMakeFiles/quick_hull.dir/QuickHull.cpp.o: CMakeFiles/quick_hull.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/quick_hull.dir/QuickHull.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/quick_hull.dir/QuickHull.cpp.o -MF CMakeFiles/quick_hull.dir/QuickHull.cpp.o.d -o CMakeFiles/quick_hull.dir/QuickHull.cpp.o -c /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/QuickHull.cpp

CMakeFiles/quick_hull.dir/QuickHull.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/quick_hull.dir/QuickHull.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/QuickHull.cpp > CMakeFiles/quick_hull.dir/QuickHull.cpp.i

CMakeFiles/quick_hull.dir/QuickHull.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/quick_hull.dir/QuickHull.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/QuickHull.cpp -o CMakeFiles/quick_hull.dir/QuickHull.cpp.s

# Object files for target quick_hull
quick_hull_OBJECTS = \
"CMakeFiles/quick_hull.dir/QuickHull.cpp.o"

# External object files for target quick_hull
quick_hull_EXTERNAL_OBJECTS =

libquick_hull.a: CMakeFiles/quick_hull.dir/QuickHull.cpp.o
libquick_hull.a: CMakeFiles/quick_hull.dir/build.make
libquick_hull.a: CMakeFiles/quick_hull.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libquick_hull.a"
	$(CMAKE_COMMAND) -P CMakeFiles/quick_hull.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/quick_hull.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/quick_hull.dir/build: libquick_hull.a
.PHONY : CMakeFiles/quick_hull.dir/build

CMakeFiles/quick_hull.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/quick_hull.dir/cmake_clean.cmake
.PHONY : CMakeFiles/quick_hull.dir/clean

CMakeFiles/quick_hull.dir/depend:
	cd /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/CMakeFiles/quick_hull.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/quick_hull.dir/depend

