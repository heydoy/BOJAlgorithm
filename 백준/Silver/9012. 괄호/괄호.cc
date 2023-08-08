#include <iostream>
#include <stack> 
#include <string>

using namespace std;



int main(int argc, char const * argv[]) {
    int k;
    cin >> k;
    
    while (k > 0) {
        k--;
        string str, ans;
        
        cin >> str;
        stack<char> st; 
        ans = "YES";
        for (int i=0; i<str.length(); i++) {
            if (str[i] == '(') {
                st.push(str[i]);
            } else if (str[i] == ')' && !st.empty()) {
                st.pop();
            } else {
                ans = "NO";
                break;
            }
        }
        if (!st.empty()) {
            ans = "NO";
        }
        cout << ans << endl;
    }
    
    return 0;
}