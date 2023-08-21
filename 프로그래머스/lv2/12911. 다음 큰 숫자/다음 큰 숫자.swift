import Foundation

func solution(_ n: Int) -> Int
{
    var bin = String(n, radix: 2)
    let countOne = bin.filter { $0 == "1" }.count
    
    var answer = n + 1
    
    while true {
        bin = String(answer, radix: 2)
        if bin.filter { $0 == "1" }.count == countOne {
            break
        }
        answer += 1
    }
    return answer
}
