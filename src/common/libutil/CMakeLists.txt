
add_library(util log.c
                 xzmalloc.c
                 jsonutil.c
                 monotime.c)

include_directories(${JSON_INCLUDE_DIRS} ${FLUX_INCLUDE_DIRS})

target_link_libraries(util ${JSON_LIBRARIES})

