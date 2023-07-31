// 오름차순, 버블소트 
#include <iostream>

using namespace std;

int main(int argc, char const * argv[]) {
    int n;
    cin >> n;
    int array[n];
    int tmp;
    
    for(int i=0; i<n; i++){
        cin >> array[i];
    }
    
    for(int i=n; i> 1; i--) {
        for(int j=0; j < i-1 ; j++) {
            if (array[j] > array[j+1]) {
                tmp = array[j];
                array[j] = array[j+1];
                array[j+1] = tmp;
            }
        }
    }
    
    for(int i=0; i<n; i++) cout << array[i] << '\n';
    
    return 0;
}