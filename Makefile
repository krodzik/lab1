CC=../buildroot-2015.08.1/output/host/usr/bin/i686-buildroot-linux-uclibc-gcc
CFLAGS=

all: lib
	$(CC) -L. -Wall -o prog main.c -lhello

lib:
	$(CC) -c -Wall -fpic hello.c
	$(CC) -shared -o libhello.so hello.o

clean:
	rm -f hello.o
	rm -f main.o
	rm -f prog
	rm -f libhello.so