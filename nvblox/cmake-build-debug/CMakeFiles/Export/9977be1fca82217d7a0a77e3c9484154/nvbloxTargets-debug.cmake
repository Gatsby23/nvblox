#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "nvblox::nvblox_lib" for configuration "Debug"
set_property(TARGET nvblox::nvblox_lib APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::nvblox_lib PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libnvblox_lib.so"
  IMPORTED_SONAME_DEBUG "libnvblox_lib.so"
  )

list(APPEND _cmake_import_check_targets nvblox::nvblox_lib )
list(APPEND _cmake_import_check_files_for_nvblox::nvblox_lib "${_IMPORT_PREFIX}/lib/libnvblox_lib.so" )

# Import target "nvblox::nvblox_gpu_hash" for configuration "Debug"
set_property(TARGET nvblox::nvblox_gpu_hash APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::nvblox_gpu_hash PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CUDA;CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/nvblox/libnvblox_gpu_hash.a"
  )

list(APPEND _cmake_import_check_targets nvblox::nvblox_gpu_hash )
list(APPEND _cmake_import_check_files_for_nvblox::nvblox_gpu_hash "${_IMPORT_PREFIX}/lib/nvblox/libnvblox_gpu_hash.a" )

# Import target "nvblox::nvblox_datasets" for configuration "Debug"
set_property(TARGET nvblox::nvblox_datasets APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::nvblox_datasets PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/libnvblox_datasets.so"
  IMPORTED_SONAME_DEBUG "libnvblox_datasets.so"
  )

list(APPEND _cmake_import_check_targets nvblox::nvblox_datasets )
list(APPEND _cmake_import_check_files_for_nvblox::nvblox_datasets "${_IMPORT_PREFIX}/lib/libnvblox_datasets.so" )

# Import target "nvblox::stdgpu" for configuration "Debug"
set_property(TARGET nvblox::stdgpu APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::stdgpu PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_DEBUG "CXX"
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/nvblox/libstdgpu.a"
  )

list(APPEND _cmake_import_check_targets nvblox::stdgpu )
list(APPEND _cmake_import_check_files_for_nvblox::stdgpu "${_IMPORT_PREFIX}/lib/nvblox/libstdgpu.a" )

# Import target "nvblox::fuse_3dmatch" for configuration "Debug"
set_property(TARGET nvblox::fuse_3dmatch APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::fuse_3dmatch PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/nvblox/fuse_3dmatch"
  )

list(APPEND _cmake_import_check_targets nvblox::fuse_3dmatch )
list(APPEND _cmake_import_check_files_for_nvblox::fuse_3dmatch "${_IMPORT_PREFIX}/bin/nvblox/fuse_3dmatch" )

# Import target "nvblox::fuse_replica" for configuration "Debug"
set_property(TARGET nvblox::fuse_replica APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(nvblox::fuse_replica PROPERTIES
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/bin/nvblox/fuse_replica"
  )

list(APPEND _cmake_import_check_targets nvblox::fuse_replica )
list(APPEND _cmake_import_check_files_for_nvblox::fuse_replica "${_IMPORT_PREFIX}/bin/nvblox/fuse_replica" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
