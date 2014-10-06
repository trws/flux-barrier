#ifndef _FLUX_XBARRIER_H
#define _FLUX_XBARRIER_H

/* Execute a barrier across 'nprocs' processes.
 * The 'name' must be unique across the comms session.
 */
int flux_xbarrier (flux_t h, const char *name, int nprocs);

#endif /* !_FLUX_XBARRIER_H */

/*
 * vi:tabstop=4 shiftwidth=4 expandtab
 */
