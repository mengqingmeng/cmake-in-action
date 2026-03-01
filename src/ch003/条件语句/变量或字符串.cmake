if(ABC)
else()
    message("ABC 不是一个已定义的变量，条件为假")
endif()

set(a "XYZ")
set(b "0")
set(c "a-NOTFOUND")

if(a)
message("a是一个变量，且值为非假值常量，所以为真")
endif()

if(b)
    message("b是一个变量，且值为非假值常量，所以为真")
else()
    message("b是一个变量，且值为假值，所以为假")
endif(b)

if(c) 
    message("c是一个变量，且值为非假值常量，所以为真")
else()
    message("c是一个变量，且值为假值，所以为假")
endif()
