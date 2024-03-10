import Foundation 

let house = Int(readLine()!)!
var location = readLine()!.split(separator: " ").map { Int($0)!}

location.sort { $0 < $1 } // 오름차순으로 정렬 

print(location[(house-1)/2])

