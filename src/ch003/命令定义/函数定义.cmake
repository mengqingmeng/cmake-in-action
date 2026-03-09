function(my_func a b)
    # 通过变量引用的方式获取形参数据
    set(result "参数a：${a}，参数b:${b}" PARENT_SCOPE) # 使用PARENT_SCOPE将结果传递给外部作用域
endfunction()

my_func(x y)
message(${result})

# 函数调用不区分大小写
MY_FUNC(A;b)
message(${result})

MY_func(你 好)
message(${result})