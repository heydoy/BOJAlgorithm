import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var sum = 0
    
    var a = A.sorted(by: <)
    var b = B.sorted(by: >)

    // 큰 값과 작은 값 곱하기 
    // 이렇게 해도 되지만 시간 초과
    // 삭제되면서 삭제되는 값을 반환하기 때문에 가능
    // sum += a.removeFirst() * b.removeLast()
    for i in 0..<a.count {
        sum += a[i] * b[i]
    }

    return sum
}