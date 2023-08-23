import Foundation

func solution(_ elements:[Int]) -> Int {
    var answer = Set<Int>()
    let circular = elements + elements
    
    for idx in 0..<elements.count {
        var sum = 0
        for jdx in 0..<elements.count {
            sum += circular[idx + jdx]
            answer.insert(sum)
        }
        sum = 0
    }
    
    return answer.count
}