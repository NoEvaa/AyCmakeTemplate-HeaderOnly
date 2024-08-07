cmake_minimum_required(VERSION 3.15)

# 
# Project
# 

project(
  AyHeader
  VERSION 0.1.0
  LANGUAGES CXX
)

set(MODULE_NS ayin)
set(MODULE_NAME ayproj)

# Project options
include(cmake/Options.cmake)

# 
include(cmake/Utils.cmake)

# Init cmake environment
include(cmake/Init.cmake)

# Project module

add_library(${MODULE_NAME} INTERFACE)

target_include_directories(${MODULE_NAME} INTERFACE include)

add_library(${MODULE_NS}::${MODULE_NAME} ALIAS ${MODULE_NAME})

# Main

file(
  GLOB
  ${MODULE_NAME}_MAIN_FILES
  "main/*.c"
  "main/*.cpp"
  "main/*.cc"
)

message(${${MODULE_NAME}_MAIN_FILES})
add_executable(${MODULE_NAME}_main ${${MODULE_NAME}_MAIN_FILES})

target_link_libraries(${MODULE_NAME}_main PUBLIC ${MODULE_NS}::${MODULE_NAME})

# Examples
#add_subdirectory(examples)

# Tests
#add_subdirectory(tests)
