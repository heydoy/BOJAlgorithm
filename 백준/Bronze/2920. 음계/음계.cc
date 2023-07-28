#include <iostream>
#include <array>

using namespace std;

int main(int argc, char const * argv[]){
    array<int, 8> inputArr;
    array<int, 8> ascendingArr {1,2,3,4,5,6,7,8};
    array<int, 8> descendingArr {8,7,6,5,4,3,2,1};

    for (int i=0; i<8; i++) {
        cin >> inputArr[i];
    }
    if (inputArr == ascendingArr) {
        cout << "ascending";
    } else if (inputArr == descendingArr) {
        cout << "descending";
    } else {
        cout << "mixed";
    }
    
    return 0;
}