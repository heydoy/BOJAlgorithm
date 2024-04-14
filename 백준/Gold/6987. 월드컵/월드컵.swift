// 참고: https://medium.com/@dltkddud4403/%EB%B0%B1%EC%A4%80-%EC%9B%94%EB%93%9C%EC%BB%B5-6987%EB%B2%88-3dadd7ab974

import Foundation

var matchSeq = [(Int, Int)]()
var teamList = [[Int]]()

// n번째 진행할 경기 
func possible(_ n: Int) -> Bool {
    // 모든 경기를 다 수행했을 경우 
    if n == 15 {
        var flag = true
        for score in teamList {
            if score[0] != 0 || score[1] != 0 || score[2] != 0 {
                flag = false
                break
            }
        }
        return flag
    } else {
        var temp = false
        // 모든 케이스를 돌았을 경우(승,패,무)
        for i in 0..<3 {
            // 불가능한 케이스 스킵
            if teamList[matchSeq[n].0][i] == 0 || teamList[matchSeq[n].1][2 - i] == 0 {
                continue
            }
            
            teamList[matchSeq[n].0][i] -= 1
            teamList[matchSeq[n].1][2 - i] -= 1
            
            temp = possible(n + 1)
            if temp { return true } // 가능한 케이스면 참 
            
            teamList[matchSeq[n].0][i] += 1
            teamList[matchSeq[n].1][2 - i] += 1
        }
        // 다 불가능할 때 
        return false
    }
}

var answer = [Int]()

// 경기순서 
for i in 0..<5 {
    for j in (i + 1)...5 {
        matchSeq.append((i, j))
    }
}

for _ in 0..<4 {
    let temp = readLine()!.split(separator: " ").map { Int($0)! }
    teamList = []
    
    for i in 0..<6 {
        teamList.append(Array(temp[i*3..<(i*3)+3]))
    }
    
    if possible(0) {
        answer.append(1)
    } else {
        answer.append(0)
    }
}

print(answer.map { String($0) }.joined(separator: " "))
