CC = gcc
CFLAGS = -Wall -g
SDL_FLAGS = $(shell sdl2-config --cflags --libs) -lSDL2_image -lSDL2_ttf

all: server sh13

server: server.c
	$(CC) $(CFLAGS) -o server server.c -pthread

sh13: sh13.c
	$(CC) $(CFLAGS) -o sh13 sh13.c -pthread $(SDL_FLAGS)

clean:
	rm -f server sh13 *.o

run_server: server
	./server 32000

run_client: sh13
	./sh13 localhost 32000 localhost 32001 Player1