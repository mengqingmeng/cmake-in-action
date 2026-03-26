main: main.o liba.a libb.a
	g++ main.o -o main -L. -la  -lb

liba.a: a.o
	ar rcs liba.a a.o

libb.a: b.o
	ar rcs libb.a b.o

a.o: liba/a.cpp
	g++ -c liba/a.cpp -o a.o

# 需要使用-I选项指定liba的头文件路径，因为b.cpp中包含了a.h，否则编译器无法找到a.h文件。
b.o: libb/b.cpp
	g++ -c libb/b.cpp -o b.o -Iliba

# 需要使用-I选项指定libb的头文件路径，因为main.cpp中包含了b.h，否则编译器无法找到b.h文件。
main.o: main.cpp
	g++ -lliba -llibb -c main.cpp -o main.o -Ilibb

clean:
	rm -f main main.o a.o b.o liba.a libb.a