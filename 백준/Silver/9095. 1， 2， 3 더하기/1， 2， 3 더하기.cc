#include <iostream>

using namespace std;

int num, n;
int count = 0;
void solution(int sum) {
    if(sum == n) {
        count ++;
        return;
    }
    if(sum > n) {
        return;
    }
    for(int i=1; i<= 3; i++) {
        solution(sum+i);
    }
}

int main(int argc, char const *argv []) {
    cin >> num; 
    
    for(int i=0; i<num; i++) {
        cin >> n;
        solution(0);
        cout << count << '\n';
        count = 0;
    }
    
    return 0;
}