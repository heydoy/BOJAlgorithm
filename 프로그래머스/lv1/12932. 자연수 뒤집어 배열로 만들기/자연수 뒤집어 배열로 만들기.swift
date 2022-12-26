func solution(_ n:Int64) -> [Int] {
    
    var array: [Int] = []
    var number: Int64 = n
    
    while number > 0 {
        array.append( Int(number % 10) )
        number = number / 10
    }
    
    
    return array
}