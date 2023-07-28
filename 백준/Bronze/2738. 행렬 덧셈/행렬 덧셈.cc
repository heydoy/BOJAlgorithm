#include <iostream>

using namespace std;

//  n*m  크기의 행렬 두개 A, B
int main(int argc, char const *argv[]) {
    int n, m;
    int arrA[100][100] = {};
    int arrB[100][100] = {};
    int arrSum[100][100] = {};
    
    cin >> n >> m;
    
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++){
            cin >> arrA[i][j];
        }
    }
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++){
            cin >> arrB[i][j];
        }
    }
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++){
            arrSum[i][j] = arrA[i][j] + arrB[i][j];
        }
    }
    for (int i=0; i<n; i++) {
        for (int j=0; j<m; j++){
            cout << arrSum[i][j]<<" ";
        }
        cout << "\n";
    }
    
    return 0;
}