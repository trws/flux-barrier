AC_DEFUN([X_AC_FLUX_CORE], [
    AC_ARG_WITH([flux-core],
      [AS_HELP_STRING([--with-flux-core=PREFIX],
        [build against flux-core installed at PREFIX])],
      [], [with_flux_core=yes])
    if test x"$with_flux_core" != xyes; then
        PKG_CONFIG_PATH=$with_flux_core/lib/pkgconfig/
        export PKG_CONFIG_PATH
    fi
    PKG_CHECK_MODULES(FLUX, flux-core)
  ]
)
