cmake_minimum_required(VERSION 3.20)

project(Notepad)

set(path_to_notepad "" CACHE FILEPATH "Path to Notepad executable")

set(a 缓存变量 CACHE STRING "这是一个缓存变量")
set(a 普通变量)

message("缓存变量a:$CACHE{a}") # 输出缓存变量a: 这是一个缓存变量
message("普通变量a:${a}") # 输出普通变量a: 普通变量
