cmake_minimum_required(VERSION 3.20)

project(myInterfaceLib)

# 声明接口库、包含目录
add_library(myInterfaceLib INTERFACE)
target_include_directories(myInterfaceLib INTERFACE include)

# 添加一个可执行目标
add_executable(main main.c)

# 目标链接库
target_link_libraries(main myInterfaceLib)