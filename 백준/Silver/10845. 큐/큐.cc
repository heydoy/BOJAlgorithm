#include <iostream>
#include <queue>

using namespace std;

int n, x;
queue<int> q;
string op;

void queueControl(string op) {
    if (op == "push") {
        cin >> x;
        q.push(x);
    } else if (op == "pop") {
        if (q.empty()) {
            cout << -1 << endl;
        } else {
            cout << q.front() << endl;
            q.pop();
        }
    } else if (op == "size") {
        cout << q.size() << endl;
    } else if (op == "empty") {
        cout << q.empty() << endl;
    } else if (op == "front") {
        if (q.empty()) {
            cout << -1 << endl;
        } else {
            cout << q.front() << endl;
        }
    } else if (op == "back") {
        if (q.empty()) {
            cout << -1 << endl;
        } else {
            cout << q.back() << endl;
        }
    }
}

int main(int argc, char const * []) {
    cin >> n;
    
    for(int i=0; i<n; i++) {
        cin >> op;
        queueControl(op);
    }
    
    return 0;
}