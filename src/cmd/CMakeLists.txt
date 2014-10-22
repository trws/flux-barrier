link_directories(${FluxCore_LIBRARY_DIRS})
include_directories(. 
  ${CMAKE_SOURCE_DIR}/src/modules/xbarrier
  ${ZMQ_INCLUDE_DIRS} 
  ${JSON_INCLUDE_DIRS} 
  ${FluxCore_INCLUDE_DIRS})

add_executable(flux-xbarrier flux-xbarrier.c)
target_link_libraries(flux-xbarrier util
                                    xbarrier
                                    )
                                    

