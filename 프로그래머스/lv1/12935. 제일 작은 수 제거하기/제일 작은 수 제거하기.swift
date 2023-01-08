func solution(_ arr:[Int]) -> [Int] {
    var answer = arr
    if answer.count <= 1 { return [-1] }
    else {
        answer.remove(at:answer.index(of:arr.min()!)!)
        return answer
    }
}