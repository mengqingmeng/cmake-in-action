cmake_minimum_required(VERSION 3.20)

project(import-notepad)

add_executable(notepad_exe IMPORTED)

# 设置目标属性
set_target_properties(notepad_exe PROPERTIES IMPORTED_LOCATION "c:/Windows/System32/notepad.exe")

# 不生成输出文件的自定义目标
add_custom_target(run-notepad ALL notepad_exe ${CMAKE_CURRENT_LIST_FILE})