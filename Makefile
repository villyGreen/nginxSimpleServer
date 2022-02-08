
all: Fcgi-server

Fcgi-server: fcgi-server.c
	gcc fcgi-server.c -lfcgi -lpthread  -o fcgi-server.o