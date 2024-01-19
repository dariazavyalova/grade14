# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(grades14_library VERSION 0.0.1 LANGUAGES C)

add_library(grades14 SHARED
  "grades14.c"
)

set_target_properties(grades14 PROPERTIES
  PUBLIC_HEADER grades14.h
  OUTPUT_NAME "grades14"
)

target_compile_definitions(grades14 PUBLIC DART_SHARED_LIB)
