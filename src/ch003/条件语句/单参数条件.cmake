set(a 1)

if(DEFINED a)
message("defined a 为真")
endif()

if(CACHE{b})
else()
message("cache{b}为假")
endif()

if(COMMAND set)
message("command set 为真")
endif()

if(EXISTS "${CMAKE_CURRENT_LIST_DIR}/奇怪的变量.cmake")
message("EXISTS \"{CMAKE_CURRENT_LIST_DIR}/奇怪的变量.cmake\"为真")
endif()