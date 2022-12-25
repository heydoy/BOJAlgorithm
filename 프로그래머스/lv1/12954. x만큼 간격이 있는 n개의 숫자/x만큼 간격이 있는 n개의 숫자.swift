import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var solution: [Int64] = []
    
    for i in 1...n {
        solution.append(Int64(x*i))
    }
    return solution
}