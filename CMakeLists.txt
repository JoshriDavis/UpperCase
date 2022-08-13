cmake_minimum_required(VERSION 3.13)  # CMake version check
project(UpperCase)               # Create project "simple_example"
set(CMAKE_CXX_STANDARD 14)            # Enable c++14 standard

# Add main.cpp file of project root directory as source file
set(SOURCE_FILES main.cpp)

set (CMAKE_RUNTIME_OUTPUT_DIRECTORY ..)

# Add executable target with source files listed in SOURCE_FILES variable
add_executable(UpperCase ${SOURCE_FILES})
