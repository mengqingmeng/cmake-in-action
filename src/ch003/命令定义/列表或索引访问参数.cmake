# 宏定义
macro(my_macro p)
    message("ARGC:${ARGC}")
    message("ARGV:${ARGV}")
    message("ARGN:${ARGN}")
    message("ARG0:${ARGV0},ARG1:${ARGV1},ARG2:${ARGV2}")
endmacro(my_macro p)

my_macro(x y)
