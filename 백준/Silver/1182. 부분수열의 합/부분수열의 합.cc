// 부분 수열 중 합이 s가 되는 개수 출력
// 요소가 n개일 때 부분집합 갯수는 2^n - 1개 

#include <iostream>

using namespace std;

int n, s;
int array[22]; // 정수 개수는 20개보다 작거나 같음 
int solution = 0;

void dfs(int depth, int total) {
    if ((depth + 1) == n) {
        if (s == total) { 
            solution++;
        } 
        return; 
    } 
    dfs(depth + 1, total + array[depth + 1]);
    dfs(depth + 1, total);
}

int main(int argc, char const * argv[]) {

    
    cin >> n >> s;
    for(int i=0;i<n; i++) {
        cin >> array[i];
    }
    
    dfs(-1, 0);
    
    if ( s == 0 ) {
        solution --;
    }
    
    cout << solution;
    
    return 0;
}