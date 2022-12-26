import Foundation

func solution(_ n:Int) -> Int
{
    var answer:Int = 0
    var number:Int = n
    while number > 0 {
        answer += number % 10
        number = number / 10
    }  
    return answer
}