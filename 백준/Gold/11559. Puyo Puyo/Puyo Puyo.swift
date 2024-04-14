import Foundation

var data = [[Character]]()

// 인풋 읽어오기 
for _ in 0..<12 {
    guard let line = readLine() else { break }
    data.append(Array(line)) // Store each input line as an array of characters
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, 1, -1]

func down() {
    // 중력에 의해서 아래로 내려가는 것 계산 
    for i in 0..<6 {
        for j in stride(from: 10, through: 0, by: -1) {
            for k in stride(from: 11, to: j, by: -1) {
                if data[j][i] != "." && data[k][i] == "." {
                    // 빈공간에 있을 경우 아래로 내려준다. 
                    data[k][i] = data[j][i]
                    data[j][i] = "."
                    break
                }
            }
        }
    }
}

func bfs(_ x: Int, _ y: Int, _ visited: inout [[Int]]) -> [(Int, Int)] {
    // 연결된 캐릭터 찾기 
    var queue = [(Int, Int)]()
    var temp = [(Int, Int)]()
    
    queue.append((x, y))
    temp.append((x, y))
    
    while !queue.isEmpty {
        let (a, b) = queue.removeFirst()
        for i in 0..<4 {
            let nx = a + dx[i]
            let ny = b + dy[i]
            if nx >= 0 && nx < 12 && ny >= 0 && ny < 6 && data[nx][ny] == data[x][y] && visited[nx][ny] == 0 {
                // 이웃이 매칭되고 방문한적 없으면 큐에 추가 
                queue.append((nx, ny))
                temp.append((nx, ny))
                visited[nx][ny] = 1
            }
        }
    }
    
    return temp
}

func delete(_ temp: [(Int, Int)]) {
    // 삭제 
    for (a, b) in temp {
        data[a][b] = "."
    }
}

var answer = 0
while true {
    var flag = 0
    var visited = [[Int]](repeating: [Int](repeating: 0, count: 6), count: 12)
    
    for i in 0..<12 {
        for j in 0..<6 {
            if data[i][j] != "." && visited[i][j] == 0 {
                visited[i][j] = 1
                var temp = [(Int, Int)]()
                temp = bfs(i, j, &visited)
                if temp.count >= 4 {
                    // 연결된 그룹이 4이상이면 삭제 마킹 
                    flag = 1
                    delete(temp)
                }
            }
        }
    }
    
    if flag == 0 {
        break
    }
    
    down() // 캐릭터가 제거된 후 중력 계산
    answer += 1 // 수행된 횟수 추가 
}

print(answer)
