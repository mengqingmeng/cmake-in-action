function(print_list list_name)
    # 1. 根据传入的变量名获取实际的列表内容内容
    set(internal_list ${${list_name}})

    # 2. 将 CMake 默认的列表分隔符（分号 ;）替换为 " | "
    string(REPLACE ";" " | " formatted_string "${internal_list}")

    # 3. 打印结果
    message("${formatted_string}")
endfunction()