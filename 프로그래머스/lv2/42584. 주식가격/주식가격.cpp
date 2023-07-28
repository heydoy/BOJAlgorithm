#include <string>
#include <vector>
#include <stack>

using namespace std;

vector<int> solution(vector<int> prices) {
    int size = prices.size();
    vector<int> answer(size, 0);
    stack<int> st; // 인덱스 저장
    
    for (int i=0; i<size; i++) {
        // 스택에 값이 있고, 스택 탑 인덱스 값이 현재가격보다 클 경우 
        while (!st.empty() && prices[st.top()] > prices[i]) {
            
            answer[st.top()] = i-st.top();
            st.pop();
        }
        st.push(i); // 인덱스 푸시
    }
    while(!st.empty()) {
        answer[st.top()] = size - 1 - st.top(); // 인덱스가 0부터 시작하므로 
        st.pop();
    }
    
    return answer;
}