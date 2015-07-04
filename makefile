#This should bild everything
CC = gcc
CFLAGS = -O3 -flto -Wall -fmessage-length=0  -std=gnu11
LIBS = -lm

all: sphere_lebedev_rule.o main.o 
	$(CC) $(CFLAGS) main.o sphere_lebedev_rule.o -o quatm_c.run $(LIBS)
lebedev: sphere_lebedev_rule.c
	$(CC) $(CFLAGS) -c sphere_lebedev_rule.c
main: main.c
	$(CC) $(CFLAGS) -c main.c
clean:
	rm -f *.o *.run