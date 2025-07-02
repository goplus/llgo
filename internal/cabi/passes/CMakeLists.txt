cmake_minimum_required(VERSION 3.13.4)
project(llgo-passes)

find_package(LLVM REQUIRED CONFIG)

message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# Set the same C++ standard and compile flags that LLVM uses
set(CMAKE_CXX_STANDARD 17 CACHE STRING "C++ standard to conform to")

include_directories(${LLVM_INCLUDE_DIRS})
separate_arguments(LLVM_DEFINITIONS_LIST NATIVE_COMMAND ${LLVM_DEFINITIONS})
add_definitions(${LLVM_DEFINITIONS_LIST})

# Build in-place CABI transformation pass (preserves function names)
add_library(InPlaceCABITransformPass MODULE
    InPlaceCABITransformPass.cpp
)

# Link against LLVM libraries
llvm_map_components_to_libnames(llvm_libs support core irreader transformutils)
target_link_libraries(InPlaceCABITransformPass ${llvm_libs})