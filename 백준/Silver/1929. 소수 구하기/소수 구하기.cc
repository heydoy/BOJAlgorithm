#include <iostream>
#include <cmath>

using namespace std;

bool isPrime(int n) {
    if (n<2) { return false; }
    if (n == 2 || n == 3) { return true; }
    int rt = sqrt(n);
    for(int i=2; i<=rt; i++) {
        if(n%i == 0) { return false; }
    }
    return true;
}

int main(int argc, char const *argv[]) {
    ios_base :: sync_with_stdio(false); 
    cin.tie(NULL); 
    cout.tie(NULL);
    
    int m,n;
    cin >> m >> n;
    
    for (int i = m; i <= n; i++) {
        if (isPrime(i)) {
            cout << i << '\n';
        }
    }
    return 0;
}