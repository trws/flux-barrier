AM_CFLAGS = @GCCWARN@

AM_CPPFLAGS = \
	$(FLUX_CFLAGS) $(JSON_CFLAGS) \
	-I $(top_srcdir)/src/common/libutil

libfluxdir = $(libdir)/flux
fluxmoddir = $(libfluxdir)/modules
includefluxdir = $(includedir)/flux

#
# Comms module
#
fluxmod_LTLIBRARIES = xbarrier.la

fluxmod_libadd = \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(FLUX_LIBS) $(JSON_LIBS) $(LIBZMQ) $(LIBCZMQ)

fluxmod_ldflags = -avoid-version -module -shared -export-dynamic \
        -export-symbols-regex '^mod_(main|name)$$'

xbarrier_la_SOURCES = xbarrier.c
xbarrier_la_LDFLAGS = $(fluxmod_ldflags)
xbarrier_la_LIBADD = $(fluxmod_libadd)

#
# API for module
#
libflux_LTLIBRARIES = \
	libflux-xbarrier.la

includeflux_HEADERS = \
	xbarrier.h

libflux_xbarrier_la_SOURCES = \
	libxbarrier.c

libflux_xbarrier_la_LIBADD = \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(FLUX_LIBS) $(JSON_LIBS) $(LIBZMQ) $(LIBCZMQ)

libflux_xbarrier_la_LDFLAGS = -Wl,--version-script=$(srcdir)/version.map

EXTRA_DIST = version.map
