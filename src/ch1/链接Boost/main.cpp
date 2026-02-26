#include <boost/regex.hpp>
#include <iostream>
#include <string>

using namespace std;
using namespace boost;

int main(){
    string s = R"(
        Search Engines: http://baidu.com http://google.com http://bing.com
        About Me: https://xuhongxu.com/about/)";

    regex e(R"(([a-zA-Z]*)://[a-zA-Z0-9./]+)");

    for(sregex_iterator it(s.begin(), s.end(), e), end_it; it != end_it; ++it){
        cout << "Match: " << (*it)[0] << endl;
        cout << "Protocol: " << (*it)[1] << endl;
        cout << endl;
    }

    return 0;
}