func solution(_ num:Int) -> Int {
    
    var result = num
    var count = 0
    
    if num == 1 { return 0 }
    
    while result > 1  {
        if result == 1 { return count }
        if count == 500 { return -1 }
        if result % 2 == 0 {
            result /= 2
        }
        else {
            result *= 3
            result += 1
        }
        count += 1
    }
    
    return count
}