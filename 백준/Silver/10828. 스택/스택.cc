#include <iostream>
#include <stack>
#include <string>

using namespace std;

int length, num;
stack<int> st; 
string str;

void solution(string str) {
    if (str == "push") {
        cin >> num;
        st.push(num);
    } else if (str == "pop") {
        if(st.empty()) {
            cout << "-1" << '\n';
        } else {
            cout << st.top() << '\n';
            st.pop();
        }
    } else if (str == "size") {
        cout << st.size() << '\n';

    } else if (str == "empty") {
        if (st.empty()) {
            cout << "1" << '\n';
        } else {
            cout << "0" << '\n';
        }
        
    } else if (str == "top") {
        if (st.empty()) {
            cout << "-1" << '\n';
        } else {
            cout << st.top() << '\n';
        }
    }
}

int main(int argc, char const * argv[]) {
    cin >> length;
    
    for(int i=0; i<length; i++) {
        cin >> str;
        solution(str);
    }
    
    return 0;
}