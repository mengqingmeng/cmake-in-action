cmake_minimum_required(VERSION 3.20)
project(myProgram)

add_executable(myProgram main.c)

# EXCLUDE_FROM_ALL：是否将当前目标排除在构建全部的目标之外。为真时：不构建。 手动指定构建：cmake --build . target myProgramExcludeFromAll
add_executable(myProgramExcludeFromAll EXCLUDE_FROM_ALL main.c)