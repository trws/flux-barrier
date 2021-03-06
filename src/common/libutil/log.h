/*****************************************************************************
 *  Copyright (C) 2010 Lawrence Livermore National Security, LLC.
 *  Written by Jim Garlick <garlick@llnl.gov> LLNL-CODE-423279
 *  All Rights Reserved.
 *
 *  This file is part of the Distributed I/O Daemon (diod).
 *  For details, see <http://code.google.com/p/diod/>.
 *
 *  This program is free software; you can redistribute it and/or modify it
 *  under the terms of the GNU General Public License (as published by the
 *  Free Software Foundation) version 2, dated June 1991.
 *
 *  This program is distributed in the hope that it will be useful, but
 *  WITHOUT ANY WARRANTY; without even the IMPLIED WARRANTY OF MERCHANTABILITY
 *  or FITNESS FOR A PARTICULAR PURPOSE. See the terms and conditions of the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software Foundation,
 *  Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA or see
 *  <http://www.gnu.org/licenses/>.
 *****************************************************************************/

#ifndef _UTIL_LOG_H
#define _UTIL_LOG_H

void log_init (char *p);
void log_fini (void);
void log_set_dest (char *dest);
char *log_get_dest (void);
void log_msg (const char *fmt, va_list ap);

void err_exit (const char *fmt, ...)
        __attribute__ ((format (printf, 1, 2), noreturn));
void err (const char *fmt, ...)
        __attribute__ ((format (printf, 1, 2)));
void errn_exit (int errnum, const char *fmt, ...)
        __attribute__ ((format (printf, 2, 3), noreturn));
void errn (int errnum, const char *fmt, ...)
        __attribute__ ((format (printf, 2, 3)));
void msg_exit (const char *fmt, ...)
        __attribute__ ((format (printf, 1, 2), noreturn));
void msg (const char *fmt, ...)
        __attribute__ ((format (printf, 1, 2)));

#define oom() do { \
  errn_exit (ENOMEM, "%s::%s(), line %d", __FILE__, __FUNCTION__, __LINE__); \
} while (0)

const char *log_leveltostr (int level);
int log_strtolevel (const char *s);

#endif /* !_UTIL_LOG_H */

/*
 * vi:tabstop=4 shiftwidth=4 expandtab
 */
