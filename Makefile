.PHONY: clean
.SUFFIXES: .c .o .h

vpath %.c src
vpath %.h include

%.o: %.c
	gcc -c $< -I./include
%: %.o
	gcc -o $@ $^ -I./include
	rm *.o

hello: hello.o print.o
hello.o: hello.c

print.o: print.c print.h

clean:
	rm -f *.o hello