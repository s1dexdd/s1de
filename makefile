CC = gcc
CFLAGS= -Wall

all: main

main: main.o util.o
	$(CC) $(CFLAGS) -o main main.o util.o

main.o: main.c util.h
	$(CC) $(CFLAGS) -c main.c

util.o: util.c util.h
	$(CC) $(CFLAGS) -c util.c

clean:
	rm -f *.o main