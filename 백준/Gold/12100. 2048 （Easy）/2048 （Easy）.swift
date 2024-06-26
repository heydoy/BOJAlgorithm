 
func moveUp(_ board: [[Int]]) -> [[Int]] {
    var newList = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        var index = 0
        var p = -1
        var flag = false
        
        for j in 0..<n {
            if board[j][i] != 0 {
                if !flag {
                    p = board[j][i]
                    flag = true
                } else {
                    if p == board[j][i] {
                        newList[index][i] = p * 2
                        p = -1
                        flag = false
                    } else {
                        newList[index][i] = p
                        p = board[j][i]
                    }
                    index += 1
                }
            }
        }
        
        if p != -1 {
            newList[index][i] = p
        }
    }
    
    return newList
}

func moveRight(_ board: [[Int]]) -> [[Int]] {
    var newList = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        var index = n - 1
        var p = -1
        var flag = false
        
        for j in (0..<n).reversed() {
            if board[i][j] != 0 {
                if !flag {
                    p = board[i][j]
                    flag = true
                } else {
                    if p == board[i][j] {
                        newList[i][index] = p * 2
                        p = -1
                        flag = false
                    } else {
                        newList[i][index] = p
                        p = board[i][j]
                    }
                    index -= 1
                }
            }
        }
        
        if p != -1 {
            newList[i][index] = p
        }
    }
    
    return newList
}

func moveDown(_ board: [[Int]]) -> [[Int]] {
    var newList = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        var index = n - 1
        var p = -1
        var flag = false
        
        for j in (0..<n).reversed() {
            if board[j][i] != 0 {
                if !flag {
                    p = board[j][i]
                    flag = true
                } else {
                    if p == board[j][i] {
                        newList[index][i] = p * 2
                        p = -1
                        flag = false
                    } else {
                        newList[index][i] = p
                        p = board[j][i]
                    }
                    index -= 1
                }
            }
        }
        
        if p != -1 {
            newList[index][i] = p
        }
    }
    
    return newList
}

func moveLeft(_ board: [[Int]]) -> [[Int]] {
    var newList = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for i in 0..<n {
        var index = 0
        var p = -1
        var flag = false
        
        for j in 0..<n {
            if board[i][j] != 0 {
                if !flag {
                    p = board[i][j]
                    flag = true
                } else {
                    if p == board[i][j] {
                        newList[i][index] = p * 2
                        p = -1
                        flag = false
                    } else {
                        newList[i][index] = p
                        p = board[i][j]
                    }
                    index += 1
                }
            }
        }
        
        if p != -1 {
            newList[i][index] = p
        }
    }
    
    return newList
}

func dfs(_ board: [[Int]], _ num: Int) {
    if num == 5 {
        for i in 0..<n {
            for j in 0..<n {
                maxBlock = max(maxBlock, board[i][j])
            }
        }
        return
    }
    
    var t = moveUp(board)
    dfs(t, num + 1)
    
    t = moveRight(board)
    dfs(t, num + 1)
    
    t = moveDown(board)
    dfs(t, num + 1)
    
    t = moveLeft(board)
    dfs(t, num + 1)
}

var n = Int(readLine()!)!
var board = [[Int]]()

for _ in 0..<n {
    let row = readLine()!.split(separator: " ").map { Int(String($0))! }
    board.append(row)
}

var maxBlock = 0
dfs(board, 0)
print(maxBlock)
