// 해시값 
// 항 번호만큼 특정숫자를 거듭제곱해서 곱한 다음 더하기 
// r은 31, m = 1234567891

#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const * argv[]) {
    int length;
    string str;
    long long solution = 0;
    long long m = 1234567891;
    long long r = 1; // 31^0 은 1이므로 
    cin >> length >> str;
    
    for(int i=0; i<length; i++) {
        // a 일 경우 0이 되므로 a를 빼고 1을 더함 
        solution = (solution + (str[i] - 'a' + 1) * r) % m;
        r = (r * 31) % m;
    }
    
    cout << solution;
    
    return 0;
}