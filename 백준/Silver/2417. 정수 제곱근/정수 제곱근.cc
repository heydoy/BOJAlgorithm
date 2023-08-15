#include <iostream>
#include <math.h>

using namespace std;

int main(int argc, char const *argv[]) {
    long long num;
    long long sol;
    
    cin >> num;
    
    sol = sqrt(num);
   
    if (sol * sol < num) {
        sol++;
    }
    
    cout << sol;
    
    
    return 0;
}