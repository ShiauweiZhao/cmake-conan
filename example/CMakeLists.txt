cmake_minimum_required(VERSION 3.24)

project(FormatOutput LANGUAGES CXX C)

set(CMAKE_CXX_STANDARD 14)
include(toolchain/toolchains.cmake)
find_package(fmt REQUIRED)
message("CMAKE_CXX_COMPILER: ${CMAKE_CXX_COMPILER}")
add_executable(main main.cpp)
target_link_libraries(main PRIVATE fmt::fmt)
