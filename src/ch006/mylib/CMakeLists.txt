cmake_minimum_required(VERSION 3.20)

project(mylib VERSION 1.0.0)

# 添加静态库
add_library(mylib STATIC lib.c)

# 安装库文件
install(TARGETS mylib)

# 打包
set(CPACK_PACKAGE_NAME "mylib")

include(CPack)

