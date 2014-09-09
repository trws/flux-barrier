AM_CFLAGS = @GCCWARN@

fluxbindir = $(libexecdir)/flux

AM_CPPFLAGS = \
	$(FLUX_CFLAGS) $(JSON_CFLAGS) \
	-I$(top_srcdir)/src/common/libutil \
	-I$(top_srcdir)/src/modules/barrier

fluxbin_PROGRAMS = \
	barrier

fluxbin_ldadd = \
	$(FLUX_LIBS) \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(top_builddir)/src/modules/barrier/libflux-barrier.la \
	$(JSON_LIBS) $(LIBZMQ) $(LIBCZMQ) $(LIBPTHREAD)

barrier_SOURCES = barrier.c
barrier_LDADD = $(fluxbin_ldadd)
