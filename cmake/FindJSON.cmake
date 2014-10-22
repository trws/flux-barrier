
find_package(PkgConfig)

#pkg-config search
pkg_check_modules(JSON_PKGCONF json)

set(JSON_CFLAGS ${JSON_PKGCONF_CFLAGS})

find_path(JSON_INCLUDE_DIR 
  NAMES json.h
  HINTS ${JSON_PKGCONF_INCLUDE_DIRS}
  PATH_SUFFIXES json json-c
  )

find_library(JSON_LIBRARY 
            NAMES json-c json
            PATHS ${JSON_PKGCONF_LIBRARY_DIRS})

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(JSON DEFAULT_MSG
 JSON_LIBRARY
 JSON_INCLUDE_DIR
)

if(JSON_FOUND)
  set(JSON_LIBRARIES ${JSON_LIBRARY})
  set(JSON_INCLUDE_DIRS ${JSON_INCLUDE_DIR})
endif()

mark_as_advanced(
  JSON_LIBRARY
  JSON_INCLUDE_DIR
  JSON_CFLAGS
)

