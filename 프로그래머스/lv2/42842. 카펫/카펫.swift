import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let size = brown + yellow 
    var width = Int()
    var height = Int()
    for i in 1...size {
        if size % i == 0 {
            width = size / i 
            height = i
        }
        if (width - 2) * (height - 2) == yellow {
            break
        }
    } 
    
    return [width, height]
}