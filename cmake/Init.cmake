# Init cmake environment
# 

# Check porject is main or sub project
if("${CMAKE_CURRENT_SOURCE_DIR}" STREQUAL "${CMAKE_SOURCE_DIR}")
  set(${PROJECT_NAME}_IS_MAIN 1)
endif()

# Set C++ standard
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Init build type
if(NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Debug)
endif()

if(${PROJECT_NAME}_IS_MAIN)
  message(STATUS "Main project: ${PROJECT_NAME}")
  message(STATUS "Build type: ${CMAKE_BUILD_TYPE}")
endif()

