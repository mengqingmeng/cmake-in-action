cmake_minimum_required(VERSION 3.20)

project(directory_property)

add_subdirectory(a)
add_subdirectory(b)

get_directory_property(res SUBDIRECTORIES)

message("SUBDIRECTORIES:${res}")