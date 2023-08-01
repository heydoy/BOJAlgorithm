#include <iostream>
#include <algorithm>

using namespace std;

int main(int argc, char const * argv[] ){
    ios::sync_with_stdio(false);
	cin.tie(NULL);
	cout.tie(NULL);
    
    int length, *array; 
    cin >> length;
    array = new int[length];
    
    for(int i=0; i<length; i++) {
        cin >> array[i];
    }
    // 포인터는 배열의 경우 0번째 요소 주소를 가리키니까 
    sort(array, array+length);
    
    for(int i=0; i<length; i++) {
        cout << array[i] << '\n';
    }
    return 0;
}