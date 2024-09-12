# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# compile CUDA with /usr/local/cuda-11.8/bin/nvcc
# compile CXX with /usr/lib/ccache/c++
CUDA_DEFINES = -DCUB_WRAPPED_NAMESPACE=nvblox -DGFLAGS_IS_A_DLL=0 -DTHRUST_DEVICE_SYSTEM=THRUST_DEVICE_SYSTEM_CUDA

CUDA_INCLUDES = --options-file CMakeFiles/nvblox_gpu_hash.dir/includes_CUDA.rsp

CUDA_FLAGS = -g -std=c++17 "--generate-code=arch=compute_89,code=[compute_89,sm_89]" -Xcompiler=-fPIC --extended-lambda --expt-relaxed-constexpr -Xcudafe=--display_error_number -Xcompiler=-Wall,-Wextra,-Wshadow,-fno-omit-frame-pointer --diag-suppress=20054 --diag-suppress=20091 --debug --device-debug -O0

CXX_DEFINES = -DCUB_WRAPPED_NAMESPACE=nvblox -DGFLAGS_IS_A_DLL=0 -DTHRUST_DEVICE_SYSTEM=THRUST_DEVICE_SYSTEM_CUDA

CXX_INCLUDES = -I/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/include -isystem /usr/local/cuda-11.8/targets/x86_64-linux/include -isystem /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/_deps/ext_stdgpu-src/src/stdgpu/.. -isystem /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/_deps/ext_stdgpu-build/src/stdgpu/include -isystem /home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/eigen/include/eigen3

CXX_FLAGS = -g -std=gnu++17 -fPIC -fdiagnostics-color=always -Wall -Wextra -Wshadow -fno-omit-frame-pointer -O0

