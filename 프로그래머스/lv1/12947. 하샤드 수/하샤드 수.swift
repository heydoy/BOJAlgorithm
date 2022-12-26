func solution(_ x:Int) -> Bool {
    
    var sum = 0
    for i in String(x) {
        guard let num = Int(String(i)) else { continue }
        sum += num
    }
    
    return x % sum == 0 
}