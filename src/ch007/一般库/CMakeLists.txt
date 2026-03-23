cmake_minimum_required(VERSION 3.20)

project(myLib)

# cmake -DBUILD_SHARED_LIBS=ON ..  指定为动态库
add_library(myLib lib.c)