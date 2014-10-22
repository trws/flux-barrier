
include_directories(. ${ZMQ_INCLUDE_DIRS} ${JSON_INCLUDE_DIRS} ${FluxCore_INCLUDE_DIRS})
link_directories(${FluxCore_LIBRARY_DIRS})

add_library(xbarrier xbarrier.c libxbarrier.c)
target_link_libraries(xbarrier util ${ZMQ_LIBRARIES} ${FluxCore_LIBRARIES})

