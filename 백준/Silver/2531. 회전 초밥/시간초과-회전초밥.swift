let input = readLine()!.split(separator: " ").compactMap { Int($0)}
// 접시갯수 n, 가짓수 d, 연속 k, 쿠폰번호 c
let (n, d, k, c) = (input[0], input[1], input[2], input[3])

// 스시 벨트
var sushi = [Int]()
for _ in 0..<n {
    sushi.append(Int(readLine()!)!)
}

// 먹을 수 있는 최대가짓수
// set로 안 겹치게 해서 구하면 될 것
var maxNum = 0 // 최대 가짓수

// 초밥 리스트를 k개 만큼 잘라서 Array Slice만듬
// [c] 쿠폰을 무조건 더하기 - 어차피 셋트이므로
for i in 0..<n {
    var num = 0 // 가짓수
    if (i+k) < n { // i+k가 마지막 인덱스 숫자보다 낮을 경우
        let slice = sushi[i..<i+k]
        num = Set(slice + [c]).count
    } else { // i+k가 마지막 인덱스 숫자보다 높을 경우
        let slice = sushi[i..<n]
        let slice2 = sushi[0..<(i+k)%n]
        let merged = Array(slice) + Array(slice2) + [c]
        num = Set(merged).count
    }
    maxNum = max(maxNum, num)
}

print(maxNum)
