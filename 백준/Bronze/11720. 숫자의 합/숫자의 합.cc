#include <iostream>

using namespace std;

int main() {
    int num, sum;
    char ch;
    
    cin >> num;
    sum = 0;
    
    for(int i=0; i<num; i++) {
        cin >> ch;
        sum += ch - 48; // 아스키코드값 
    }
    
    cout << sum << '\n';
    
    return 0;
}