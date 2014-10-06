AM_CFLAGS = @GCCWARN@

fluxbindir = $(libexecdir)/flux

AM_CPPFLAGS = \
	$(FLUX_CFLAGS) $(JSON_CFLAGS) \
	-I$(top_srcdir) \
	-I$(top_srcdir)/src/modules/xbarrier

fluxbin_PROGRAMS = \
	xbarrier

fluxbin_ldadd = \
	$(FLUX_LIBS) \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(top_builddir)/src/modules/xbarrier/libflux-xbarrier.la \
	$(JSON_LIBS) 

xbarrier_SOURCES = xbarrier.c
xbarrier_LDADD = $(fluxbin_ldadd)
