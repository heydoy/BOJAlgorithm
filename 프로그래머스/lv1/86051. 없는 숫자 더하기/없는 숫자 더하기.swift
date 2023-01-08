import Foundation

func solution(_ numbers:[Int]) -> Int {
    // 0~9의 합: 45
    return 45 - numbers.reduce(0) {$0 + $1}
}