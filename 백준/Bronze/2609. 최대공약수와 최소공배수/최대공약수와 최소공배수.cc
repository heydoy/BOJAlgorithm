#include <iostream>

using namespace std;

int gcd(int a, int b) {
    // 유클리드 호제법 
    // 큰 숫자를 작은 숫자로 나머지 연산
    // 작은 숫자를 위의 나머지로 다시 나머지 연산 
    // 0이 나올 때까지 반대 
    // 제수가 최대공약수가 됨 
    
    int x = a % b;
    while (x != 0) {
        a = b; // 큰 수 대신 작은수를 넣기
        b = x; // 작은 수 위치에 아까의 나머지
        x = a % b; // 다시 나머지 연산
    } 
    return b;
}

int lcm(int a, int b) {
    // 최대공약수 * 최소공배수 = 두 수의 곱 
    // 두수의 곱 / 최대공약수 = 최소공배수
    return (a * b) / gcd(a, b);
}

int main(int argc, char const * argv[]) {
    int a, b;
    
    cin >> a >> b;
    
    cout << gcd(a, b) << "\n" << lcm(a, b) << endl;
    
    return 0;
}