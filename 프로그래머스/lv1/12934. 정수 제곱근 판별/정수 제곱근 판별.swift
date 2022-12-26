import Foundation

func solution(_ n:Int64) -> Int64 {
    var root:Int64 = Int64(sqrt(Double(n))) 
    
    return root * root == n ? Int64(pow(Double(root + 1), 2.0)) : -1
}