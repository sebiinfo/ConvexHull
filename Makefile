# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# Default target executed when no arguments are given to make.
default_target: all
.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:

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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache
.PHONY : edit_cache/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache
.PHONY : rebuild_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/CMakeFiles /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull//CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/johnnyventuras/Desktop/EcolePolytechniqueLocal/ConvexHull/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean
.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named convex_hull

# Build rule for target.
convex_hull: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 convex_hull
.PHONY : convex_hull

# fast build rule for target.
convex_hull/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/build
.PHONY : convex_hull/fast

#=============================================================================
# Target rules for targets named quick_hull

# Build rule for target.
quick_hull: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 quick_hull
.PHONY : quick_hull

# fast build rule for target.
quick_hull/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull.dir/build.make CMakeFiles/quick_hull.dir/build
.PHONY : quick_hull/fast

#=============================================================================
# Target rules for targets named quick_hull_parallel

# Build rule for target.
quick_hull_parallel: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 quick_hull_parallel
.PHONY : quick_hull_parallel

# fast build rule for target.
quick_hull_parallel/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull_parallel.dir/build.make CMakeFiles/quick_hull_parallel.dir/build
.PHONY : quick_hull_parallel/fast

#=============================================================================
# Target rules for targets named points

# Build rule for target.
points: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 points
.PHONY : points

# fast build rule for target.
points/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/points.dir/build.make CMakeFiles/points.dir/build
.PHONY : points/fast

#=============================================================================
# Target rules for targets named graham_scan

# Build rule for target.
graham_scan: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 graham_scan
.PHONY : graham_scan

# fast build rule for target.
graham_scan/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graham_scan.dir/build.make CMakeFiles/graham_scan.dir/build
.PHONY : graham_scan/fast

GrahamScan.o: GrahamScan.cpp.o
.PHONY : GrahamScan.o

# target to build an object file
GrahamScan.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graham_scan.dir/build.make CMakeFiles/graham_scan.dir/GrahamScan.cpp.o
.PHONY : GrahamScan.cpp.o

GrahamScan.i: GrahamScan.cpp.i
.PHONY : GrahamScan.i

# target to preprocess a source file
GrahamScan.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graham_scan.dir/build.make CMakeFiles/graham_scan.dir/GrahamScan.cpp.i
.PHONY : GrahamScan.cpp.i

GrahamScan.s: GrahamScan.cpp.s
.PHONY : GrahamScan.s

# target to generate assembly for a file
GrahamScan.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/graham_scan.dir/build.make CMakeFiles/graham_scan.dir/GrahamScan.cpp.s
.PHONY : GrahamScan.cpp.s

QuickHull.o: QuickHull.cpp.o
.PHONY : QuickHull.o

# target to build an object file
QuickHull.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull.dir/build.make CMakeFiles/quick_hull.dir/QuickHull.cpp.o
.PHONY : QuickHull.cpp.o

QuickHull.i: QuickHull.cpp.i
.PHONY : QuickHull.i

# target to preprocess a source file
QuickHull.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull.dir/build.make CMakeFiles/quick_hull.dir/QuickHull.cpp.i
.PHONY : QuickHull.cpp.i

QuickHull.s: QuickHull.cpp.s
.PHONY : QuickHull.s

# target to generate assembly for a file
QuickHull.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull.dir/build.make CMakeFiles/quick_hull.dir/QuickHull.cpp.s
.PHONY : QuickHull.cpp.s

QuickHullParallel.o: QuickHullParallel.cpp.o
.PHONY : QuickHullParallel.o

# target to build an object file
QuickHullParallel.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull_parallel.dir/build.make CMakeFiles/quick_hull_parallel.dir/QuickHullParallel.cpp.o
.PHONY : QuickHullParallel.cpp.o

QuickHullParallel.i: QuickHullParallel.cpp.i
.PHONY : QuickHullParallel.i

# target to preprocess a source file
QuickHullParallel.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull_parallel.dir/build.make CMakeFiles/quick_hull_parallel.dir/QuickHullParallel.cpp.i
.PHONY : QuickHullParallel.cpp.i

QuickHullParallel.s: QuickHullParallel.cpp.s
.PHONY : QuickHullParallel.s

# target to generate assembly for a file
QuickHullParallel.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/quick_hull_parallel.dir/build.make CMakeFiles/quick_hull_parallel.dir/QuickHullParallel.cpp.s
.PHONY : QuickHullParallel.cpp.s

main.o: main.cpp.o
.PHONY : main.o

# target to build an object file
main.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/main.cpp.o
.PHONY : main.cpp.o

main.i: main.cpp.i
.PHONY : main.i

# target to preprocess a source file
main.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/main.cpp.i
.PHONY : main.cpp.i

main.s: main.cpp.s
.PHONY : main.s

# target to generate assembly for a file
main.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/convex_hull.dir/build.make CMakeFiles/convex_hull.dir/main.cpp.s
.PHONY : main.cpp.s

points.o: points.cpp.o
.PHONY : points.o

# target to build an object file
points.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/points.dir/build.make CMakeFiles/points.dir/points.cpp.o
.PHONY : points.cpp.o

points.i: points.cpp.i
.PHONY : points.i

# target to preprocess a source file
points.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/points.dir/build.make CMakeFiles/points.dir/points.cpp.i
.PHONY : points.cpp.i

points.s: points.cpp.s
.PHONY : points.s

# target to generate assembly for a file
points.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/points.dir/build.make CMakeFiles/points.dir/points.cpp.s
.PHONY : points.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... convex_hull"
	@echo "... graham_scan"
	@echo "... points"
	@echo "... quick_hull"
	@echo "... quick_hull_parallel"
	@echo "... GrahamScan.o"
	@echo "... GrahamScan.i"
	@echo "... GrahamScan.s"
	@echo "... QuickHull.o"
	@echo "... QuickHull.i"
	@echo "... QuickHull.s"
	@echo "... QuickHullParallel.o"
	@echo "... QuickHullParallel.i"
	@echo "... QuickHullParallel.s"
	@echo "... main.o"
	@echo "... main.i"
	@echo "... main.s"
	@echo "... points.o"
	@echo "... points.i"
	@echo "... points.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
