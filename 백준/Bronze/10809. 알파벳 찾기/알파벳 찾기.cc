#include <iostream>
#include <string>

using namespace std;

int main(int argc, char const * argv[]) {
    string s;
    string abcs = "abcdefghijklmnopqrstuvwxyz";
    
    cin >> s;
    
    for(int i=0; i<abcs.length(); i++) {
        cout << (int)s.find(abcs[i]) << " ";
    }
    
    return 0;
}