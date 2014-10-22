cmake_minimum_required (VERSION 2.8)
project (FLUX_BARRIER C CXX)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}/cmake")
# set(EXECUTABLE_OUTPUT_PATH ${FLUX_BARRIER_BINARY_DIR}/bin)
# set(LIBRARY_OUTPUT_PATH ${FLUX_BARRIER_BINARY_DIR}/lib)

#handle full-path includes in sub-directories
include_directories(.)

add_subdirectory(src)
add_subdirectory(doc)

