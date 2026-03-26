main: main.o libab.dylib
	gcc main.o libab.dylib -o main

main.o: main.c
	gcc -c main.c -o main.o

# 生成静态库libab.dylib，依赖a.o和b.o。指令为：ar rcs libab.dylib a.o b.o
libab.dylib: a.o b.o
	ar rcs libab.dylib a.o b.o 

a.o: a.c
	gcc -c a.c -o a.o

b.o: b.c
	gcc -c b.c -o b.o