// n! / k!(n-k)!

#include <iostream> 

using namespace std;

int factorial(int num) {
    int solution = 1;
    for (int i=num; i>0; i--) {
        solution *= i;
    }
    return solution;
}

int main(int argc, char const * argv[]) {
    int n, k;
    
    cin >> n >> k;
    
    int solution = factorial(n) / (factorial(k) * factorial(n-k));
    
    cout << solution;
    
    return 0;
}