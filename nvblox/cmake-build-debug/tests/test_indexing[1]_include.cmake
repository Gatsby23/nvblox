if(EXISTS "/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_indexing[1]_tests.cmake")
  include("/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_indexing[1]_tests.cmake")
else()
  add_test(test_indexing_NOT_BUILT test_indexing_NOT_BUILT)
endif()
