func levenshteinDistance(_ a: [Character], _ b: [Character]) -> Int {
    let m = a.count
    let n = b.count
    
    // 2차원 배열로 초기화 
    var d = Array(repeating: Array(repeating: 0, count: n + 1), count: m + 1)
    
    // 첫번째 행과 열 설정 (인덱스와 동일함 0, 1, 2,...,m)
    for i in 1...m {
        d[i][0] = i
    }
    
    // 첫번째 행과 열 설정 (인덱스와 동일함 0, 1, 2,...,n)
    for j in 1...n {
        d[0][j] = j
    }
    
    // 나머지 행렬 채우기 
    for j in 1...n {
        for i in 1...m {
            /// 두개가 동일할 경우 왼쪽 위 대각선에서 가져온다 
            if a[i - 1] == b[j - 1] {
                d[i][j] = d[i - 1][j - 1]
            } else {
            /// 아닐 경우 왼쪽, 왼쪽 위, 위 중 가장 적은 수에 1을 더한다 
                d[i][j] = min(d[i - 1][j], // 삭제
                              d[i][j - 1], // 삽입
                              d[i - 1][j - 1]) // 대체
                              + 1
            }
        }
    }
    
    // 가장 오른쪽 아래 숫자가 정답 
    return d[m][n]
}

let str1 = readLine()!
let str2 = readLine()!

print("\(levenshteinDistance(str1.compactMap{$0}, str2.compactMap{$0}))")

