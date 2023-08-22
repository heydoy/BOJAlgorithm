#include <iostream>
#include <stack>

using namespace std;

int main() {
    ios_base::sync_with_stdio(0);
    cin.tie(0);
    cout.tie(0);
    
    int n;
    cin >> n;
    
    stack<int> st;
    
    for (int i=0; i<n; i++) {
        int command;
        cin >> command;
        
        if(command == 1) {
            int val;
            cin >> val;
            st.push(val);
        } else if (command == 2) {
            if(st.empty()) {
                cout << "-1" << "\n";
            } else {
                cout << st.top() << "\n";
                st.pop();
            }
        } else if (command == 3) {
            cout << st.size() << "\n";
        } else if (command == 4) {
            if(st.empty()) {
                cout << "1" << "\n";
            } else {
                cout << "0" << "\n";
            }
        } else {
            if(st.empty()) {
                cout << "-1" << "\n";
            } else {
                cout << st.top() << "\n";
            }
        }
    }
    return 0;
}