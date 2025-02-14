#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "LDMRS_Example" for configuration ""
set_property(TARGET LDMRS_Example APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(LDMRS_Example PROPERTIES
  IMPORTED_LOCATION_NOCONFIG "/home/thijs/sick_scan_ws/src/install/libsick_ldmrs/bin/LDMRS_Example"
  )

list(APPEND _IMPORT_CHECK_TARGETS LDMRS_Example )
list(APPEND _IMPORT_CHECK_FILES_FOR_LDMRS_Example "/home/thijs/sick_scan_ws/src/install/libsick_ldmrs/bin/LDMRS_Example" )

# Import target "sick_ldmrs" for configuration ""
set_property(TARGET sick_ldmrs APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(sick_ldmrs PROPERTIES
  IMPORTED_LINK_INTERFACE_LIBRARIES_NOCONFIG "pthread"
  IMPORTED_LOCATION_NOCONFIG "/home/thijs/sick_scan_ws/src/install/libsick_ldmrs/lib/libsick_ldmrs.so.0.1.0"
  IMPORTED_SONAME_NOCONFIG "libsick_ldmrs.so.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS sick_ldmrs )
list(APPEND _IMPORT_CHECK_FILES_FOR_sick_ldmrs "/home/thijs/sick_scan_ws/src/install/libsick_ldmrs/lib/libsick_ldmrs.so.0.1.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
