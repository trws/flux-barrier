JSON_CFLAGS = $(shell pkg-config --cflags json)
JSON_LIBS = $(shell pkg-config --libs json)

FLUX_CFLAGS = $(shell pkg-config --cflags flux-core)
FLUX_LIBS = $(shell pkg-config --libs flux-core)

ZMQ_CFLAGS = -I/usr/include/czmq
ZMQ_LIBS = -lczmq -lzmq

CFLAGS = -Wall -Werror -fPIC \
	-D_GNU_SOURCE=1 $(JSON_CFLAGS) $(FLUX_CFLAGS) $(ZMQ_CFLAGS) -Ilibutil

VPATH = libutil
UTIL_OBJS = log.o monotime.o xzmalloc.o jsonutil.o



PROGS = flux-barrier
MODS = barrier.so

all: $(PROGS) $(MODS)

flux-barrier: flux-barrier.o libbarrier.o $(UTIL_OBJS)
	$(CC) -o $@ $^ $(FLUX_LIBS) $(JSON_LIBS) $(ZMQ_LIBS)

barrier.so: barrier.c $(UTIL_OBJS)
	$(CC) -shared $(CFLAGS) -o $@ $^ $(FLUX_LIBS)

clean:
	rm -f *.o $(PROGS) $(MODS)
