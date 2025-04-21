SDL_FLAGS = $(shell sdl2-config --cflags --libs) -lSDL2_image -lSDL2_ttf

all: server sh13

server: server.c
	gcc -o server server.c -pthread

sh13: sh13.c
	gcc -o sh13 sh13.c -pthread $(SDL_FLAGS)

clean:
	rm -f server sh13 *.o

run_server: server
	./server 32000

run_client1: sh13
	./sh13 localhost 32000 localhost 32001 Elsa1
	
run_client2: sh13
	./sh13 localhost 32000 localhost 32002 Elsa2

run_client3: sh13
	./sh13 localhost 32000 localhost 32003 Elsa3

run_client4: sh13
	./sh13 localhost 32000 localhost 32004 Elsa4
