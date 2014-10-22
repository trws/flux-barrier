find_package(JSON REQUIRED)
find_package(ZMQ REQUIRED)
find_package(FluxCore REQUIRED)

if(CMAKE_COMPILER_IS_GNUCC OR CMAKE_COMPILER_IS_GNUCXX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -pedantic")
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Wall -pedantic")
endif()

add_subdirectory(common)
add_subdirectory(modules)
add_subdirectory(cmd)

