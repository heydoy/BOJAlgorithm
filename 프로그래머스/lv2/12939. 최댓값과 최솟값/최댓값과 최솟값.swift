import Foundation

func solution(_ s:String) -> String {
    var integerArray: [Int] = s.components(separatedBy: " ").map { Int(String($0))! }
    
    // var integerArray: [Int] = []
    // stringArray.forEach {
    //     if let num = Int($0) {
    //         integerArray.append(num) 
    //     }
    // }
    
    //1안 - max,min 함수
    //let max = integerArray.max()!
    //let min = integerArray.min()!
    
    //return "\(min) \(max)"
    
    // 2안 - 정렬해서 보내기
    integerArray.sort()
    
    return "\(integerArray[0]) \(integerArray[integerArray.count - 1])"
    
}