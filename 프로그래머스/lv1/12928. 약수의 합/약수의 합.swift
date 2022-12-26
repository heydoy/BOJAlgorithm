func solution(_ n:Int) -> Int {
//     var sum : Int = 0
    
//     if ( n == 0 ) {
//         return n
//     }
//     for i in 1...(n / 2) {
//         if( n % i == 0) {
//             sum += i
//         }
//     }
    
//     return sum + n
    if n < 2 { return n }
    var sum: Int = n
    for i in 1...(n / 2) {
        sum += n % i == 0 ? i : 0
    }
    return sum
}