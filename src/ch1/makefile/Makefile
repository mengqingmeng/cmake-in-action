# 冒号前面是目标文件，冒号后面是依赖文件，命令行是生成目标文件的命令
main: main.o slow.o
	g++ -o main main.o slow.o

main.o: main.cpp
	g++ -c main.cpp -o main.o

slow.o: slow.cpp
	g++ -c slow.cpp -o slow.o