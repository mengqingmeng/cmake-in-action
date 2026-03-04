cmake_minimum_required(VERSION 3.20)

set(on "OFF") # 变量

# 判定的是常量，此时为真
if(on)
    message("ON")
else()
    message("NOT ON")
endif()

# 判断的是on变量，内容为“OFF”，条件为假
if(${on})
    message("${ON} is True")
else()
    message("${on} is False")
endif()
