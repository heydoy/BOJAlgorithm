#include <iostream>
#include <deque>
#include <string>

using namespace std;

int n, x;
string st;
deque<int> dq; 

void sol() {
    cin >> st;
    
    if (st == "push_front") {
        cin >> x; 
        dq.push_front(x);
        
    } else if (st == "push_back") {
        cin >> x;
        dq.push_back(x);
    } else if (st == "pop_front") {
        if (dq.empty()) {
            cout << -1 << endl;
        } else {
            cout << dq.front() << endl;
            dq.pop_front();
        }
    } else if (st == "pop_back") {
        if (dq.empty()) {
            cout << -1 << endl;
        } else {
            cout << dq.back() << endl;
            dq.pop_back();
        }
    } else if (st == "size") {
        cout << dq.size() << endl;
    } else if (st == "empty") {
        if (dq.empty()) {
            cout << 1 << endl;
        } else {
            cout << 0 << endl;
        }
    } else if (st == "front") {
        if (dq.empty()) {
            cout << -1 << endl;
        } else {
            cout << dq.front() << endl;
        }
    } else if (st == "back") {
        if (dq.empty()) {
            cout << -1 << endl;
        } else {
            cout << dq.back() << endl;
        }
    }
    
}

int main(int argc, char const * argv[]) {
    cin >> n;
    
    for(int i=0; i<n; i++) {
        sol();
    }
    
    return 0; 
}