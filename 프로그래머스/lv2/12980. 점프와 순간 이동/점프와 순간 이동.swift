import Foundation

func solution(_ n:Int) -> Int 
{
    var ans: Int = 0
    var length: Int = n
    // +x / *2 를 이용해서 문제 풀기
    
    while length != 0 {
        let root = Double(length).squareRoot()
        if  root == 2.0 {
            length = Int(root)
        } else if length % 2 == 0 {
            length /= 2
        } else {
            ans += 1
            length -= 1
        }
    }

    return ans
}