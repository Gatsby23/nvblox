if(EXISTS "/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_gpu_layer_view[1]_tests.cmake")
  include("/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_gpu_layer_view[1]_tests.cmake")
else()
  add_test(test_gpu_layer_view_NOT_BUILT test_gpu_layer_view_NOT_BUILT)
endif()
