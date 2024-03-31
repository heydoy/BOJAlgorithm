//
//  main.swift
//  TestBOJ
//
//  Created by Kim Doy on 3/31/24.
//

import Foundation

let n = Int(readLine()!)!

var stairs = [Int]()
for _ in 0..<n {
    stairs.append(Int(readLine()!)!)
}

// DP
// 마지막칸 기준으로 아래패턴이 될 것
// 1) 전칸: n + (n - 1) + (n - 3) // 세칸 연속은 안되므로
// 2) 전전칸: n + (n - 2)
// 이제 이동칸 기준으로 1 또는 2의 패턴을 사용할 수 있음

var dp = [Int](repeating: 0, count: n) // i 번째까지 도달할 때 최대 값을 넣기
dp[0] = stairs[0] // 시작 다음 첫번째 칸
if n > 1 {
    dp[1] = stairs[1] + stairs[0] // 시작 다음 두번째 칸, 여기서는 무조건 첫번째칸과 현재칸을 더하는 게 제일 높은 수 (계단에 음수는 없으므로)
}
if n > 2 {
    dp[2] = stairs[2] + max(stairs[0], stairs[1]) // 시작 다음 3번째 칸, 0에서 2까지 혹은 1에서 2까지 중 무엇이 더 큰지 계산
}

// 패턴 dp[i] = 계단[i] + max(dp[i-2], dp[i-3]+계단[i-1])
// 위에 정의한 패턴과 동일함
if n > 3 {
    for i in 3..<n {
        dp[i] = stairs[i] + max(stairs[i-1] + dp[i-3], dp[i-2])
    }
    
}

print(dp[n-1])
