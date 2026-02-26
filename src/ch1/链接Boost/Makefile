BOOST_DIR = /Users/mqm/Downloads/boost
BOOST_LIB_DIR = $(BOOST_DIR)/stage/lib

CXXFLAGS = -I $(BOOST_DIR) # 编译库的路径,让编译器知道在哪里找到Boost的头文件
LDFLAGS = -L $(BOOST_LIB_DIR) -Wl,-rpath,$(BOOST_LIB_DIR) # 链接库的路径
all: static_boost shared_boost

# 直接指定静态库文件，避免链接到动态库
static_boost: main.cpp
	g++ -o static_boost $(CXXFLAGS) ${LDFLAGS} main.cpp
shared_boost: main.cpp
	g++ -o shared_boost $(CXXFLAGS) ${LDFLAGS} main.cpp $(LDFLAGS) -lboost_regex

clean:
	rm -f static_boost shared_boost