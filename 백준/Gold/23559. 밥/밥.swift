// 참고: https://tjddneva.tistory.com/13

func compare(_ a: (Int, Int), _ b: (Int, Int)) -> Bool {
    return a.0 - a.1 > b.0 - b.1
}

var food = [(Int, Int)]()

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (day, budget) = (input[0], input[1]) // 날짜, 예산

var taste = 0

for _ in 0..<day {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (a,b) = (input[0],input[1]) // 5천원짜리 메뉴의 맛 a / 1천원짜리 메뉴의 맛 b
    taste += b // 일단 1천원짜리 맛으로 다 먹기 
    food.append((a, b)) // 받은 음식맛정보 넣어놓기 
}

food.sort(by: compare) // 5천원짜리가 1천원보다 맛차이가 큰 순서대로 정렬. 날짜 순서는 어차피 상관없으므로

var money = 1000 * food.count // 일단 돈은 1천원짜리 금액으로 

for i in 0..<food.count {
    if food[i].0 > food[i].1 { // 5천원짜리가 더 맛있을 경우 
        money += 4000 // 돈 더하기 
        if money > budget { break } // 예산 초과시 나가기 
        // 예산 초과 안했을 경우 
        taste = taste - food[i].1 + food[i].0 // 1천원짜리 맛을 빼고 5천원짜리 맛으로 더하기
    }
}
print(taste)
