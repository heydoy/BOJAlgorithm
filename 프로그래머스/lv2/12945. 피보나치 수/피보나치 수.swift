// // 1안- 재귀함수 - 성능문제 
// func fibonacci(_ n: Int) -> Int {
//     if n == 0 {
//         return 0
//     } else if n == 1 {
//         return 1
//     } else {
//         return fibonacci(n - 1) + fibonacci(n - 2)
//     }
// }

func solution(_ n:Int) -> Int {
  var fibonacciArray: [Int] = [0, 1]
  
  for i in 2...n {
    fibonacciArray.append((fibonacciArray[i-2] + fibonacciArray[i-1]) % 1234567)
  }
  
  return fibonacciArray[n]
}