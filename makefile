.PHTONY:clean

VPATH = ./src

CC=gcc
CFLAGS= -Wall -g -I ./incl -I /usr/local/include/hiredis/
src =$(wildcard ./src/*.c)
mid=$(notdir $(src))
obj=$(patsubst %.c,%.o,$(mid))

all:test

test:$(obj)
	$(CC) $^ -lhiredis -o $@

%.o:%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf test *.o
