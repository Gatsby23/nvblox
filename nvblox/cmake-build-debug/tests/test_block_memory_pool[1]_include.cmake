if(EXISTS "/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_block_memory_pool[1]_tests.cmake")
  include("/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_block_memory_pool[1]_tests.cmake")
else()
  add_test(test_block_memory_pool_NOT_BUILT test_block_memory_pool_NOT_BUILT)
endif()
