cmake_minimum_required(VERSION 3.20)

project(import-boost)

# 添加导入型静态库目标
add_library(boost-regex STATIC IMPORTED)

if(WIN32)
    set(BOOST_REGEX_LIB_PATH "E:/SDK/Boost/lib/libboost_regex-vc143-mt-gd-x64-1_90.lib")
    set(BOOST_INCLUDE_DIR "E:/SDK/Boost/include")
else()
    set(BOOST_REGEX_LIB_PATH "$ENV{HOME}/boost/stage/lib/libboost_regex.a")
    set(BOOST_INCLUDE_DIR "$ENV{HOME}/boost")
endif()

# 设置库的包含目录
target_include_directories(boost-regex INTERFACE ${BOOST_INCLUDE_DIR})

# 设置库的属性
set_target_properties(boost-regex PROPERTIES IMPORTED_LOCATION "${BOOST_REGEX_LIB_PATH}")

# 添加可执行文件
add_executable(main "../../ch001/链接Boost/main.cpp")

# 可执行文件链接boost库
target_link_libraries(main boost-regex)