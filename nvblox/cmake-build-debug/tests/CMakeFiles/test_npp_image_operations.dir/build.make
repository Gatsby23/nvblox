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
CMAKE_COMMAND = /snap/clion/292/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /snap/clion/292/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug

# Include any dependencies generated for this target.
include tests/CMakeFiles/test_npp_image_operations.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_npp_image_operations.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_npp_image_operations.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_npp_image_operations.dir/flags.make

tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o: tests/CMakeFiles/test_npp_image_operations.dir/flags.make
tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o: /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_npp_image_operations.cpp
tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o: tests/CMakeFiles/test_npp_image_operations.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o -MF CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o.d -o CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o -c /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_npp_image_operations.cpp

tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.i"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_npp_image_operations.cpp > CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.i

tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.s"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_npp_image_operations.cpp -o CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.s

# Object files for target test_npp_image_operations
test_npp_image_operations_OBJECTS = \
"CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o"

# External object files for target test_npp_image_operations
test_npp_image_operations_EXTERNAL_OBJECTS =

tests/test_npp_image_operations: tests/CMakeFiles/test_npp_image_operations.dir/test_npp_image_operations.cpp.o
tests/test_npp_image_operations: tests/CMakeFiles/test_npp_image_operations.dir/build.make
tests/test_npp_image_operations: tests/libnvblox_test_utils.so
tests/test_npp_image_operations: executables/libnvblox_datasets.so
tests/test_npp_image_operations: libnvblox_lib.so
tests/test_npp_image_operations: libnvblox_gpu_hash.a
tests/test_npp_image_operations: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.2
tests/test_npp_image_operations: _deps/ext_stdgpu-build/src/stdgpu/libstdgpu.a
tests/test_npp_image_operations: /usr/local/cuda-11.8/targets/x86_64-linux/lib/libnvToolsExt.so
tests/test_npp_image_operations: /usr/lib/x86_64-linux-gnu/libglog.so
tests/test_npp_image_operations: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/test_npp_image_operations: tests/CMakeFiles/test_npp_image_operations.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_npp_image_operations"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_npp_image_operations.dir/link.txt --verbose=$(VERBOSE)
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /snap/clion/292/bin/cmake/linux/x64/bin/cmake -D TEST_TARGET=test_npp_image_operations -D TEST_EXECUTABLE=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_npp_image_operations -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests -D TEST_EXTRA_ARGS= -D "TEST_PROPERTIES=ENVIRONMENT;ASAN_OPTIONS=protect_shadow_gap=0" -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_npp_image_operations_TESTS -D CTEST_FILE=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_npp_image_operations[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=30 -D TEST_XML_OUTPUT_DIR= -P /snap/clion/292/bin/cmake/linux/x64/share/cmake-3.29/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/test_npp_image_operations.dir/build: tests/test_npp_image_operations
.PHONY : tests/CMakeFiles/test_npp_image_operations.dir/build

tests/CMakeFiles/test_npp_image_operations.dir/clean:
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_npp_image_operations.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_npp_image_operations.dir/clean

tests/CMakeFiles/test_npp_image_operations.dir/depend:
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/CMakeFiles/test_npp_image_operations.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test_npp_image_operations.dir/depend

