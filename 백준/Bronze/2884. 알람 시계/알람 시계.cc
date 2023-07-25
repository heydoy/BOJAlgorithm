#include <iostream>

using namespace std;

int main(int argc, char const *argv[]) {
    int hour, min;
    
    cin >> hour >> min;
    
    if (min >= 45) {
        min -= 45;
    } else {
        min += 15; // 왜냐면 한시간 뺀 후 15분 더한 값이 45분이므로 
        hour -= 1;
    }
    // 0시일 경우
    if (hour < 0) {
        hour = 23;
    }
    cout << hour << " " << min;
    
    return 0;
}
