cmake_minimum_required(VERSION 3.20)

# 添加静态库a
add_library(a STATIC src/liba.c)

# 设置目标属性，指定头文件目录
set_property(TARGET a PROPERTY INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR}/include)

# 设置目标的接口属性，使得依赖该库的目标也能使用这个头文件目录
set_property(TARGET a PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR}/include)

