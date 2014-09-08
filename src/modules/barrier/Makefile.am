AM_CPPFLAGS =

libfluxdir = $(libdir)/flux
fluxmoddir = $(libfluxdir)/modules
includefluxdir = $(includedir)/flux

#
# Comms module
#
fluxmod_LTLIBRARIES = barrier.la

fluxmod_libadd = \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(LIBFLUX) $(LIBJSON) $(LIBZMQ) $(LIBCZMQ)

fluxmod_ldflags = \
	-module -avoid-version -Wl,--version-script=$(srcdir)/../module_version.map

barrier_la_SOURCES = barrier.c
barrier_la_LDFLAGS = $(fluxmod_ldflags)
barrier_la_LIBADD = $(fluxmod_libadd)

#
# API for module
#
libflux_LTLIBRARIES = \
	libflux-barrier.la

includeflux_HEADERS = \
	barrier.h

libflux_barrier_la_SOURCES = \
	libbarrier.c

libflux_barrier_la_LIBADD = \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(LIBFLUX) $(LIBJSON) $(LIBZMQ) $(LIBCZMQ)

libflux_barrier_la_LDFLAGS = -Wl,--version-script=$(srcdir)/version.map

EXTRA_DIST = version.map
