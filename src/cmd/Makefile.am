AM_CFLAGS = @GCCWARN@

fluxbindir = $(libexecdir)/flux

AM_CPPFLAGS = \
	$(FLUX_CFLAGS) $(JSON_CFLAGS) \
	-I$(top_srcdir) \
	-I$(top_srcdir)/src/modules/xbarrier

fluxbin_PROGRAMS = \
	flux-xbarrier

fluxbin_ldadd = \
	$(FLUX_LIBS) \
	$(top_builddir)/src/common/libutil/libutil.la \
	$(top_builddir)/src/modules/xbarrier/libflux-xbarrier.la \
	$(JSON_LIBS) 

flux_xbarrier_SOURCES = flux-xbarrier.c
flux_xbarrier_LDADD = $(fluxbin_ldadd)
