if(EXISTS "/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_occupancy_decay[1]_tests.cmake")
  include("/home/robotics/Lab_Study/Mesh_Study/NVBlox_Series/nvblox/nvblox/cmake-build-debug/tests/test_occupancy_decay[1]_tests.cmake")
else()
  add_test(test_occupancy_decay_NOT_BUILT test_occupancy_decay_NOT_BUILT)
endif()
