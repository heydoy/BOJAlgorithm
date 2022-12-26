func solution(_ a:Int, _ b:Int) -> Int64 {
    
    var sum: Int64 = 0
    if a == b {
        return Int64(a)
    } else { 
        let count = abs( a - b ) / 2 
        if abs(a - b) % 2 == 0 { // 합이 짝수 
            let mid = (a + b) / 2
            sum = Int64((a + b) * count + mid)
        } else { // 합이 홀수 
            let mid = (a + b) / 2
            sum = Int64((a + b) * (count + 1))
        }
    }
    return sum
}