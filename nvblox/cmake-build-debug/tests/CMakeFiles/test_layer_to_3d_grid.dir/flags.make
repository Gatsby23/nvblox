# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

# compile CUDA with /usr/local/cuda-11.8/bin/nvcc
CUDA_DEFINES = -DCUB_WRAPPED_NAMESPACE=nvblox -DGFLAGS_IS_A_DLL=0 -DTHRUST_DEVICE_SYSTEM=THRUST_DEVICE_SYSTEM_CUDA

CUDA_INCLUDES = --options-file CMakeFiles/test_layer_to_3d_grid.dir/includes_CUDA.rsp

CUDA_FLAGS = -g -std=c++17 "--generate-code=arch=compute_89,code=[compute_89,sm_89]" -Xcompiler=-fPIE --extended-lambda --expt-relaxed-constexpr -Xcudafe=--display_error_number -Xcompiler=-Wall,-Wextra,-Wshadow,-fno-omit-frame-pointer --diag-suppress=20054 --diag-suppress=20091 --debug --device-debug -O0

