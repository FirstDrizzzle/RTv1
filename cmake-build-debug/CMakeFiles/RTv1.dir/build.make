# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /nfs/2016/r/rishchen/Projects/RTv1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/RTv1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/RTv1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/RTv1.dir/flags.make

CMakeFiles/RTv1.dir/main.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/RTv1.dir/main.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/main.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/main.c

CMakeFiles/RTv1.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/main.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/main.c > CMakeFiles/RTv1.dir/main.c.i

CMakeFiles/RTv1.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/main.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/main.c -o CMakeFiles/RTv1.dir/main.c.s

CMakeFiles/RTv1.dir/main.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/main.c.o.requires

CMakeFiles/RTv1.dir/main.c.o.provides: CMakeFiles/RTv1.dir/main.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/main.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/main.c.o.provides

CMakeFiles/RTv1.dir/main.c.o.provides.build: CMakeFiles/RTv1.dir/main.c.o


CMakeFiles/RTv1.dir/init_file.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/init_file.c.o: ../init_file.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/RTv1.dir/init_file.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/init_file.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/init_file.c

CMakeFiles/RTv1.dir/init_file.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/init_file.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/init_file.c > CMakeFiles/RTv1.dir/init_file.c.i

CMakeFiles/RTv1.dir/init_file.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/init_file.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/init_file.c -o CMakeFiles/RTv1.dir/init_file.c.s

CMakeFiles/RTv1.dir/init_file.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/init_file.c.o.requires

CMakeFiles/RTv1.dir/init_file.c.o.provides: CMakeFiles/RTv1.dir/init_file.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/init_file.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/init_file.c.o.provides

CMakeFiles/RTv1.dir/init_file.c.o.provides.build: CMakeFiles/RTv1.dir/init_file.c.o


CMakeFiles/RTv1.dir/get_next_line.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/get_next_line.c.o: ../get_next_line.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/RTv1.dir/get_next_line.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/get_next_line.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/get_next_line.c

CMakeFiles/RTv1.dir/get_next_line.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/get_next_line.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/get_next_line.c > CMakeFiles/RTv1.dir/get_next_line.c.i

CMakeFiles/RTv1.dir/get_next_line.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/get_next_line.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/get_next_line.c -o CMakeFiles/RTv1.dir/get_next_line.c.s

CMakeFiles/RTv1.dir/get_next_line.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/get_next_line.c.o.requires

CMakeFiles/RTv1.dir/get_next_line.c.o.provides: CMakeFiles/RTv1.dir/get_next_line.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/get_next_line.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/get_next_line.c.o.provides

CMakeFiles/RTv1.dir/get_next_line.c.o.provides.build: CMakeFiles/RTv1.dir/get_next_line.c.o


CMakeFiles/RTv1.dir/parse.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/parse.c.o: ../parse.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/RTv1.dir/parse.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/parse.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/parse.c

CMakeFiles/RTv1.dir/parse.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/parse.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/parse.c > CMakeFiles/RTv1.dir/parse.c.i

CMakeFiles/RTv1.dir/parse.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/parse.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/parse.c -o CMakeFiles/RTv1.dir/parse.c.s

CMakeFiles/RTv1.dir/parse.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/parse.c.o.requires

CMakeFiles/RTv1.dir/parse.c.o.provides: CMakeFiles/RTv1.dir/parse.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/parse.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/parse.c.o.provides

CMakeFiles/RTv1.dir/parse.c.o.provides.build: CMakeFiles/RTv1.dir/parse.c.o


CMakeFiles/RTv1.dir/alloc_init_sphere.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/alloc_init_sphere.c.o: ../alloc_init_sphere.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/RTv1.dir/alloc_init_sphere.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/alloc_init_sphere.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/alloc_init_sphere.c

CMakeFiles/RTv1.dir/alloc_init_sphere.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/alloc_init_sphere.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/alloc_init_sphere.c > CMakeFiles/RTv1.dir/alloc_init_sphere.c.i

CMakeFiles/RTv1.dir/alloc_init_sphere.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/alloc_init_sphere.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/alloc_init_sphere.c -o CMakeFiles/RTv1.dir/alloc_init_sphere.c.s

CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.requires

CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.provides: CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.provides

CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.provides.build: CMakeFiles/RTv1.dir/alloc_init_sphere.c.o


CMakeFiles/RTv1.dir/alloc_ray.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/alloc_ray.c.o: ../alloc_ray.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/RTv1.dir/alloc_ray.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/alloc_ray.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/alloc_ray.c

CMakeFiles/RTv1.dir/alloc_ray.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/alloc_ray.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/alloc_ray.c > CMakeFiles/RTv1.dir/alloc_ray.c.i

CMakeFiles/RTv1.dir/alloc_ray.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/alloc_ray.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/alloc_ray.c -o CMakeFiles/RTv1.dir/alloc_ray.c.s

CMakeFiles/RTv1.dir/alloc_ray.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/alloc_ray.c.o.requires

CMakeFiles/RTv1.dir/alloc_ray.c.o.provides: CMakeFiles/RTv1.dir/alloc_ray.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/alloc_ray.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/alloc_ray.c.o.provides

CMakeFiles/RTv1.dir/alloc_ray.c.o.provides.build: CMakeFiles/RTv1.dir/alloc_ray.c.o


CMakeFiles/RTv1.dir/alloc_cone.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/alloc_cone.c.o: ../alloc_cone.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/RTv1.dir/alloc_cone.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/alloc_cone.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/alloc_cone.c

CMakeFiles/RTv1.dir/alloc_cone.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/alloc_cone.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/alloc_cone.c > CMakeFiles/RTv1.dir/alloc_cone.c.i

CMakeFiles/RTv1.dir/alloc_cone.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/alloc_cone.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/alloc_cone.c -o CMakeFiles/RTv1.dir/alloc_cone.c.s

CMakeFiles/RTv1.dir/alloc_cone.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/alloc_cone.c.o.requires

CMakeFiles/RTv1.dir/alloc_cone.c.o.provides: CMakeFiles/RTv1.dir/alloc_cone.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/alloc_cone.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/alloc_cone.c.o.provides

CMakeFiles/RTv1.dir/alloc_cone.c.o.provides.build: CMakeFiles/RTv1.dir/alloc_cone.c.o


CMakeFiles/RTv1.dir/alloc_plane.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/alloc_plane.c.o: ../alloc_plane.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/RTv1.dir/alloc_plane.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/alloc_plane.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/alloc_plane.c

CMakeFiles/RTv1.dir/alloc_plane.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/alloc_plane.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/alloc_plane.c > CMakeFiles/RTv1.dir/alloc_plane.c.i

CMakeFiles/RTv1.dir/alloc_plane.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/alloc_plane.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/alloc_plane.c -o CMakeFiles/RTv1.dir/alloc_plane.c.s

CMakeFiles/RTv1.dir/alloc_plane.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/alloc_plane.c.o.requires

CMakeFiles/RTv1.dir/alloc_plane.c.o.provides: CMakeFiles/RTv1.dir/alloc_plane.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/alloc_plane.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/alloc_plane.c.o.provides

CMakeFiles/RTv1.dir/alloc_plane.c.o.provides.build: CMakeFiles/RTv1.dir/alloc_plane.c.o


CMakeFiles/RTv1.dir/alloc_cyl.c.o: CMakeFiles/RTv1.dir/flags.make
CMakeFiles/RTv1.dir/alloc_cyl.c.o: ../alloc_cyl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/RTv1.dir/alloc_cyl.c.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/RTv1.dir/alloc_cyl.c.o   -c /nfs/2016/r/rishchen/Projects/RTv1/alloc_cyl.c

CMakeFiles/RTv1.dir/alloc_cyl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/RTv1.dir/alloc_cyl.c.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /nfs/2016/r/rishchen/Projects/RTv1/alloc_cyl.c > CMakeFiles/RTv1.dir/alloc_cyl.c.i

CMakeFiles/RTv1.dir/alloc_cyl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/RTv1.dir/alloc_cyl.c.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc  $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /nfs/2016/r/rishchen/Projects/RTv1/alloc_cyl.c -o CMakeFiles/RTv1.dir/alloc_cyl.c.s

CMakeFiles/RTv1.dir/alloc_cyl.c.o.requires:

.PHONY : CMakeFiles/RTv1.dir/alloc_cyl.c.o.requires

CMakeFiles/RTv1.dir/alloc_cyl.c.o.provides: CMakeFiles/RTv1.dir/alloc_cyl.c.o.requires
	$(MAKE) -f CMakeFiles/RTv1.dir/build.make CMakeFiles/RTv1.dir/alloc_cyl.c.o.provides.build
.PHONY : CMakeFiles/RTv1.dir/alloc_cyl.c.o.provides

CMakeFiles/RTv1.dir/alloc_cyl.c.o.provides.build: CMakeFiles/RTv1.dir/alloc_cyl.c.o


# Object files for target RTv1
RTv1_OBJECTS = \
"CMakeFiles/RTv1.dir/main.c.o" \
"CMakeFiles/RTv1.dir/init_file.c.o" \
"CMakeFiles/RTv1.dir/get_next_line.c.o" \
"CMakeFiles/RTv1.dir/parse.c.o" \
"CMakeFiles/RTv1.dir/alloc_init_sphere.c.o" \
"CMakeFiles/RTv1.dir/alloc_ray.c.o" \
"CMakeFiles/RTv1.dir/alloc_cone.c.o" \
"CMakeFiles/RTv1.dir/alloc_plane.c.o" \
"CMakeFiles/RTv1.dir/alloc_cyl.c.o"

# External object files for target RTv1
RTv1_EXTERNAL_OBJECTS =

RTv1: CMakeFiles/RTv1.dir/main.c.o
RTv1: CMakeFiles/RTv1.dir/init_file.c.o
RTv1: CMakeFiles/RTv1.dir/get_next_line.c.o
RTv1: CMakeFiles/RTv1.dir/parse.c.o
RTv1: CMakeFiles/RTv1.dir/alloc_init_sphere.c.o
RTv1: CMakeFiles/RTv1.dir/alloc_ray.c.o
RTv1: CMakeFiles/RTv1.dir/alloc_cone.c.o
RTv1: CMakeFiles/RTv1.dir/alloc_plane.c.o
RTv1: CMakeFiles/RTv1.dir/alloc_cyl.c.o
RTv1: CMakeFiles/RTv1.dir/build.make
RTv1: CMakeFiles/RTv1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking C executable RTv1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/RTv1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/RTv1.dir/build: RTv1

.PHONY : CMakeFiles/RTv1.dir/build

CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/main.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/init_file.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/get_next_line.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/parse.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/alloc_init_sphere.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/alloc_ray.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/alloc_cone.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/alloc_plane.c.o.requires
CMakeFiles/RTv1.dir/requires: CMakeFiles/RTv1.dir/alloc_cyl.c.o.requires

.PHONY : CMakeFiles/RTv1.dir/requires

CMakeFiles/RTv1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/RTv1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/RTv1.dir/clean

CMakeFiles/RTv1.dir/depend:
	cd /nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /nfs/2016/r/rishchen/Projects/RTv1 /nfs/2016/r/rishchen/Projects/RTv1 /nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug /nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug /nfs/2016/r/rishchen/Projects/RTv1/cmake-build-debug/CMakeFiles/RTv1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/RTv1.dir/depend

