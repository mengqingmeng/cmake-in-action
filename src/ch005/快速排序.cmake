# 数列划分

# arr: 数列
# pivot: 基准值
# left: 划分后比基准值小的数列
# right: 划分后比基准值大的数列
function(partition arr pivot left right)
    foreach(x ${arr})
        if(${x} LESS ${pivot})
            list(APPEND _left ${x})
        else()
        list(APPEND _right ${x})
        endif()
    endforeach()

    # 将left、right通过设置作用域的方式传递给调用者
    set(${left} ${_left} PARENT_SCOPE)
    set(${right} ${_right} PARENT_SCOPE)
endfunction()

# 快速排序
# input: 输入的数列
# res: 结果
function(quick_sort input res)
    
    list(LENGTH input input_len)
    
    if(${input_len} LESS_EQUAL 1)
        set(${res} "${input}" PARENT_SCOPE)
        return()
    endif()

    # 取第一个元素作为基准
    list(GET input 0 pivot)
    # 去除首个元素
    list(SUBLIST input 1 -1 input)

    # 划分两个数组
    partition("${input}" ${pivot} left right)

    quick_sort("${left}" left)
    quick_sort("${right}" right)

    # 拼接为一个数组
    list(APPEND _res ${left} ${pivot} ${right})
    set(${res} "${_res}" PARENT_SCOPE)
endfunction()

# 接收参数
foreach(i RANGE 4 ${CMAKE_ARGC})
    list(APPEND input ${CMAKE_ARGV${i}})
endforeach()

message("排序前：${input}")
quick_sort("${input}" res)
message("排序后：${res}")

