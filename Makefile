CC = gcc
LDFLAGS = -lncurses -ltermcap

all: sl

sl: sl.c sl.h header.h Makefile
	$(CC) $(CFLAGS) -o sl sl.c $(LDFLAGS)

clean:
	-rm -f sl sl.o core

install: all
	cp sl /usr/local/bin