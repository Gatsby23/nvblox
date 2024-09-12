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
include tests/CMakeFiles/test_connected_components.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/test_connected_components.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/test_connected_components.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/test_connected_components.dir/flags.make

tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o: tests/CMakeFiles/test_connected_components.dir/flags.make
tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o: /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_connected_components.cpp
tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o: tests/CMakeFiles/test_connected_components.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o -MF CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o.d -o CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o -c /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_connected_components.cpp

tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_connected_components.dir/test_connected_components.cpp.i"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_connected_components.cpp > CMakeFiles/test_connected_components.dir/test_connected_components.cpp.i

tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_connected_components.dir/test_connected_components.cpp.s"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests/test_connected_components.cpp -o CMakeFiles/test_connected_components.dir/test_connected_components.cpp.s

# Object files for target test_connected_components
test_connected_components_OBJECTS = \
"CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o"

# External object files for target test_connected_components
test_connected_components_EXTERNAL_OBJECTS =

tests/test_connected_components: tests/CMakeFiles/test_connected_components.dir/test_connected_components.cpp.o
tests/test_connected_components: tests/CMakeFiles/test_connected_components.dir/build.make
tests/test_connected_components: tests/libnvblox_test_utils.so
tests/test_connected_components: executables/libnvblox_datasets.so
tests/test_connected_components: libnvblox_lib.so
tests/test_connected_components: libnvblox_gpu_hash.a
tests/test_connected_components: /usr/lib/x86_64-linux-gnu/libgflags.so.2.2.2
tests/test_connected_components: _deps/ext_stdgpu-build/src/stdgpu/libstdgpu.a
tests/test_connected_components: /usr/local/cuda-11.8/targets/x86_64-linux/lib/libnvToolsExt.so
tests/test_connected_components: /usr/lib/x86_64-linux-gnu/libglog.so
tests/test_connected_components: /usr/lib/x86_64-linux-gnu/libgtest.a
tests/test_connected_components: tests/CMakeFiles/test_connected_components.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_connected_components"
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_connected_components.dir/link.txt --verbose=$(VERBOSE)
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && /snap/clion/292/bin/cmake/linux/x64/bin/cmake -D TEST_TARGET=test_connected_components -D TEST_EXECUTABLE=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_connected_components -D TEST_EXECUTOR= -D TEST_WORKING_DIR=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests -D TEST_EXTRA_ARGS= -D "TEST_PROPERTIES=ENVIRONMENT;ASAN_OPTIONS=protect_shadow_gap=0" -D TEST_PREFIX= -D TEST_SUFFIX= -D TEST_FILTER= -D NO_PRETTY_TYPES=FALSE -D NO_PRETTY_VALUES=FALSE -D TEST_LIST=test_connected_components_TESTS -D CTEST_FILE=/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_connected_components[1]_tests.cmake -D TEST_DISCOVERY_TIMEOUT=30 -D TEST_XML_OUTPUT_DIR= -P /snap/clion/292/bin/cmake/linux/x64/share/cmake-3.29/Modules/GoogleTestAddTests.cmake

# Rule to build all files generated by this target.
tests/CMakeFiles/test_connected_components.dir/build: tests/test_connected_components
.PHONY : tests/CMakeFiles/test_connected_components.dir/build

tests/CMakeFiles/test_connected_components.dir/clean:
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests && $(CMAKE_COMMAND) -P CMakeFiles/test_connected_components.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/test_connected_components.dir/clean

tests/CMakeFiles/test_connected_components.dir/depend:
	cd /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/tests /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/CMakeFiles/test_connected_components.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/test_connected_components.dir/depend

