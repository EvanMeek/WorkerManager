# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/evanmeek/CLionProjects/WorkerManager

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/evanmeek/CLionProjects/WorkerManager

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/bin/ccmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/evanmeek/CLionProjects/WorkerManager/CMakeFiles /home/evanmeek/CLionProjects/WorkerManager/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/evanmeek/CLionProjects/WorkerManager/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named WorkerManager

# Build rule for target.
WorkerManager: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 WorkerManager
.PHONY : WorkerManager

# fast build rule for target.
WorkerManager/fast:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/build
.PHONY : WorkerManager/fast

class/Boss.o: class/Boss.cpp.o

.PHONY : class/Boss.o

# target to build an object file
class/Boss.cpp.o:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Boss.cpp.o
.PHONY : class/Boss.cpp.o

class/Boss.i: class/Boss.cpp.i

.PHONY : class/Boss.i

# target to preprocess a source file
class/Boss.cpp.i:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Boss.cpp.i
.PHONY : class/Boss.cpp.i

class/Boss.s: class/Boss.cpp.s

.PHONY : class/Boss.s

# target to generate assembly for a file
class/Boss.cpp.s:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Boss.cpp.s
.PHONY : class/Boss.cpp.s

class/Employee.o: class/Employee.cpp.o

.PHONY : class/Employee.o

# target to build an object file
class/Employee.cpp.o:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Employee.cpp.o
.PHONY : class/Employee.cpp.o

class/Employee.i: class/Employee.cpp.i

.PHONY : class/Employee.i

# target to preprocess a source file
class/Employee.cpp.i:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Employee.cpp.i
.PHONY : class/Employee.cpp.i

class/Employee.s: class/Employee.cpp.s

.PHONY : class/Employee.s

# target to generate assembly for a file
class/Employee.cpp.s:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Employee.cpp.s
.PHONY : class/Employee.cpp.s

class/Manager.o: class/Manager.cpp.o

.PHONY : class/Manager.o

# target to build an object file
class/Manager.cpp.o:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Manager.cpp.o
.PHONY : class/Manager.cpp.o

class/Manager.i: class/Manager.cpp.i

.PHONY : class/Manager.i

# target to preprocess a source file
class/Manager.cpp.i:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Manager.cpp.i
.PHONY : class/Manager.cpp.i

class/Manager.s: class/Manager.cpp.s

.PHONY : class/Manager.s

# target to generate assembly for a file
class/Manager.cpp.s:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/Manager.cpp.s
.PHONY : class/Manager.cpp.s

class/WorkerManager.o: class/WorkerManager.cpp.o

.PHONY : class/WorkerManager.o

# target to build an object file
class/WorkerManager.cpp.o:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/WorkerManager.cpp.o
.PHONY : class/WorkerManager.cpp.o

class/WorkerManager.i: class/WorkerManager.cpp.i

.PHONY : class/WorkerManager.i

# target to preprocess a source file
class/WorkerManager.cpp.i:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/WorkerManager.cpp.i
.PHONY : class/WorkerManager.cpp.i

class/WorkerManager.s: class/WorkerManager.cpp.s

.PHONY : class/WorkerManager.s

# target to generate assembly for a file
class/WorkerManager.cpp.s:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/class/WorkerManager.cpp.s
.PHONY : class/WorkerManager.cpp.s

main/main.o: main/main.cpp.o

.PHONY : main/main.o

# target to build an object file
main/main.cpp.o:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/main/main.cpp.o
.PHONY : main/main.cpp.o

main/main.i: main/main.cpp.i

.PHONY : main/main.i

# target to preprocess a source file
main/main.cpp.i:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/main/main.cpp.i
.PHONY : main/main.cpp.i

main/main.s: main/main.cpp.s

.PHONY : main/main.s

# target to generate assembly for a file
main/main.cpp.s:
	$(MAKE) -f CMakeFiles/WorkerManager.dir/build.make CMakeFiles/WorkerManager.dir/main/main.cpp.s
.PHONY : main/main.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... WorkerManager"
	@echo "... edit_cache"
	@echo "... class/Boss.o"
	@echo "... class/Boss.i"
	@echo "... class/Boss.s"
	@echo "... class/Employee.o"
	@echo "... class/Employee.i"
	@echo "... class/Employee.s"
	@echo "... class/Manager.o"
	@echo "... class/Manager.i"
	@echo "... class/Manager.s"
	@echo "... class/WorkerManager.o"
	@echo "... class/WorkerManager.i"
	@echo "... class/WorkerManager.s"
	@echo "... main/main.o"
	@echo "... main/main.i"
	@echo "... main/main.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system
