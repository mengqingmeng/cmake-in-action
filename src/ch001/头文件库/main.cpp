#include <boost/algorithm/string.hpp>
#include <iostream>

using namespace std;
using namespace boost;

int main(){
    string str = " hello world";
    
    cout << "str: " << str << endl;

    to_upper(str);

    cout << "str after to upper: " << str << " ;length: " << str.length() << endl;

    trim(str);

    cout << "str after trim: " << str << " ;length: " << str.length() << endl;
    return 0;
}

