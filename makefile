all: exec

main.o: main.c menu.h
	gcc -c main.c -o main.o

menu.o: menu.c menu.h
	gcc -c menu.c -o menu.o

fonction.o: fonction.c menu.h
	gcc -c fonction.c -o fonction.o


exec: main.o menu.o fonction.o 
	gcc fonction.o main.o menu.o -o exec

clean:
	rm -f *.o
