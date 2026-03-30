cmake_minimum_required(VERSION 3.20)

project(target_property)

add_executable(main main.c)

set_target_properties(main PROPERTIES
    INCLUDE_DIRECTORIES ${CMAKE_CURRENT_SOURCE_DIR}/include
    LINK_LIBRARIES a
)