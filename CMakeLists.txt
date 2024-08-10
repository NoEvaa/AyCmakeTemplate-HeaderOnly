cmake_minimum_required(VERSION 3.15)

# ==================================================
# Project

project(
  AyHeader
  VERSION 0.1.0
  LANGUAGES CXX
)

# Module: namespace::name
set(MODULE_NAME ayheader)
set(MODULE_NS ayin)

# ==================================================

# Project options
include(cmake/Options.cmake)
# Utils 
include(cmake/Utils.cmake)
# Init cmake environment
include(cmake/Init.cmake)

# Third party
#add_subdirectory(third_party)

# ==================================================
# Module library

add_library(${MODULE_NAME} INTERFACE)
target_include_directories(${MODULE_NAME} INTERFACE include)

add_library(${MODULE_NS}::${MODULE_NAME} ALIAS ${MODULE_NAME})
message(STATUS "Build library `${MODULE_NS}::${MODULE_NAME}`")

# ==================================================
# Project development environment 

if(${PROJECT_NAME}_IS_MAIN)
  # Main
  add_subdirectory(main)
endif()
