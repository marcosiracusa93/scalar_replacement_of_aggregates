cmake_minimum_required(VERSION 3.5.1)

add_definitions(-Wall -v)

if (CMAKE_C_COMPILER STREQUAL "")
  set(CMAKE_C_COMPILER /usr/local/llvm-4.0.0/bin/clang)
endif()
if (CMAKE_CXX_COMPILER STREQUAL "")
  set(CMAKE_CXX_COMPILER /usr/local/llvm-4.0.0/bin/clang++)
endif()

set(CMAKE_CXX_STANDARD 11)
#set(CMAKE_CXX_FLAGS -O3)

project(scalar_replacement_of_aggregates)

set(INCLUDE_DIR "${PROJECT_SOURCE_DIR}/include")
set(SOURCES_DIR "${PROJECT_SOURCE_DIR}/src")
set(EXECUTABLE_OUTPUT_PATH "${PROJECT_SOURCE_DIR}/bin")

# Build a compilation database
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Set-up LLVM libraries
find_package(LLVM 4.0.0 REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
message(STATUS "LLVM include dirs: ${LLVM_INCLUDE_DIRS}")
message(STATUS "LLVM Definitions: ${LLVM_DEFINITIONS}")

include_directories(${LLVM_INCLUDE_DIRS} ${INCLUDE_DIR})
add_definitions(${LLVM_DEFINITIONS})

file(GLOB SOURCES
        ${INCLUDE_DIR}/*.hpp
        ${INCLUDE_DIR}/*/*.hpp
        ${INCLUDE_DIR}/*/*/*.hpp
        ${SOURCES_DIR}/*.cpp
        ${SOURCES_DIR}/*/*.cpp
        ${SOURCES_DIR}/*/*/*.cpp
        )

add_executable(main ${SOURCES})

# Find the libraries that correspond to the LLVM components
# that we wish to use
# Run "llvm-config --components" to find the components out
llvm_map_components_to_libnames(llvm_libs support core passes transformutils)

message(STATUS "LLVM Libraries: ${llvm_libs}")

target_link_libraries(main LINK_PUBLIC ${llvm_libs})
