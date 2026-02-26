message("main \$ENV{PATH}:$ENV{PATH}")
set(ENV{PATH} "path")
message("main \$ENV{PATH}:$ENV{PATH}")

execute_process(
    COMMAND ${CMAKE_COMMAND} -P setenv.cmake
    OUTPUT_VARIABLE out
)

message("out:${out}")

message("main \$ENV{PATH}:$ENV{PATH}")          