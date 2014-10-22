
find_package(PkgConfig)

if(FLUX_CORE_PATH)
  #TODO: hack for pre-3.1 cmake
  set( ENV{PKG_CONFIG_PATH} "$ENV{PKG_CONFIG_PATH}:${FLUX_CORE_PATH}/lib/pkgconfig" )
endif(FLUX_CORE_PATH)

#pkg-config search
pkg_check_modules(FluxCore_PKGCONF flux-core)

set(FluxCore_CFLAGS ${FluxCore_PKGCONF_CFLAGS})

#since the CFLAGS are required, we rely on pkg-config for now, should make this more transparent
# find_path(FluxCore_INCLUDE_DIR 
#   NAMES flux/core.h
#   HINTS ${FluxCore_PKGCONF_INCLUDE_DIRS} ${FLUX_CORE_PATH}/include
#   # PATH_SUFFIXES flux #must use the path it is expected at 
#   )
#
# find_library(FluxCore_LIBRARY 
#   NAMES flux-core
#   PATHS ${FluxCore_PKGCONF_LIBRARY_DIRS}  ${FLUX_CORE_PATH}/lib
#   PATH_SUFFIXES flux
#   )
message("${FluxCore_PKGCONF_LIBRARY_DIRS}")

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(FluxCore DEFAULT_MSG
  FluxCore_PKGCONF_LIBRARIES
  FluxCore_PKGCONF_INCLUDE_DIRS
  FluxCore_PKGCONF_LIBRARY_DIRS
  )

if(FluxCore_PKGCONF_FOUND)
  set(FluxCore_LIBRARIES ${FluxCore_PKGCONF_LIBRARIES})
  set(FluxCore_INCLUDE_DIRS ${FluxCore_PKGCONF_INCLUDE_DIRS})
  set(FluxCore_LIBRARY_DIRS ${FluxCore_PKGCONF_LIBRARY_DIRS})
endif()

mark_as_advanced(
  FluxCore_LIBRARIES
  FluxCore_INCLUDE_DIRS
  FluxCore_LIBRARY_DIRS
  FluxCore_CFLAGS
  )

