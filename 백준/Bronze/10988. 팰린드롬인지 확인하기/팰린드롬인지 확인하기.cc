#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const *argv[]) {
    string word;
    cin >> word;
    
    int len = word.length();
    
    for (int i = 0; i < len/2 ; ++i) {
        // 단어길이가 짝수 4일 때 단어[0] != 단어[3] 
        // 단어길이가 홀수 5일 때 3번째까지 오지 못함 
        if (word[i] != word[len-i-1]) {
            cout << "0";
            return 0;
        }
    }
    cout << "1";
    return 0;
}