func compare(_ a: (Int, Int), _ b: (Int, Int)) -> Bool {
    return a.0 - a.1 > b.0 - b.1
}

var food = [(Int, Int)]()

let input = readLine()!.split(separator: " ").map { Int($0)! }
let (n, x) = (input[0], input[1])

var match = 0

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let (a,b) = (input[0],input[1])
    match += b
    food.append((a, b))
}

food.sort(by: compare)

var money = 1000 * food.count

for i in 0..<food.count {
    if food[i].0 > food[i].1 {
        money += 4000
        if money > x { break }
        match = match - food[i].1 + food[i].0
    }
}
print(match)