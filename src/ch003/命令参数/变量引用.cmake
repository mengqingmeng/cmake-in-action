set(var_a 您好)
set(var_b a)

message(${var_${var_b}})   # 输出var_a的值，即您好
