
find_package(PkgConfig)

#pkg-config search
pkg_check_modules(ZMQ_PKGCONFIG libczmq)

set(ZMQ_CFLAGS ${ZMQ_PKGCONF_CFLAGS})

find_path(ZMQ_INCLUDE_DIR 
  NAMES zmq.h zmq_utils.h
  HINTS ${ZMQ_PKGCONF_INCLUDE_DIRS}
  )
find_path(CZMQ_INCLUDE_DIR 
  NAMES czmq.h
  HINTS ${ZMQ_PKGCONF_INCLUDE_DIRS}
  PATH_SUFFIXES czmq
  )

find_library(ZMQ_LIBRARY 
            NAMES zmq
            HINTS ${ZMQ_PKGCONF_LIBRARY_DIRS})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ZMQ DEFAULT_MSG
 ZMQ_LIBRARY
 ZMQ_INCLUDE_DIR
 CZMQ_INCLUDE_DIR
)

if(ZMQ_FOUND)
  set(ZMQ_LIBRARIES ${ZMQ_LIBRARY})
  set(ZMQ_INCLUDE_DIRS ${ZMQ_INCLUDE_DIR} ${CZMQ_INCLUDE_DIR})
endif()

mark_as_advanced(
  ZMQ_LIBRARY
  ZMQ_INCLUDE_DIR
  CZMQ_INCLUDE_DIR
  ZMQ_CFLAGS
)

