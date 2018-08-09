all:main.o fun1.o fun2.o common.o
	gcc main.o fun1.o fun2.o common.o -o a.out

main.o:
	g++ -E main.c -o main.i
	g++ -S main.i -o main.s
	g++ -c main.s -o main.o

fun1.o:
	g++ -E fun1.c -o fun1.i
	g++ -S fun1.i -o fun1.s
	g++ -c fun1.s -o fun1.o

fun2.o:
	gcc -E fun2.c -o fun2.i
	gcc -S fun2.i -o fun2.s
	gcc -c fun2.s -o fun2.o

common.o:
	g++ -E common.c -o common.i
	g++ -S common.i -o common.s
	g++ -c common.s -o common.o

clean:
	rm -rf *.i *.s *.o a.out

