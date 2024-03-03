/*
참고: https://readble-ko.tistory.com/149
*/

let apple = Int(readLine()!)! // 사과나무갯수
var array = readLine()!.split(separator:" ").map { Int(String($0))!}
var cnt = 0 ; var sum = 0

for i in 0..<apple {
    sum += array[i]
    cnt += array[i]/2 //2의 배수가 되어도 OK, 어차피 물뿌리개는 동시에 사용해야되므로 
}

if (sum % 3 != 0 ) { print("NO") } // 3의 배수가 되면 OK
else {
    let answer = cnt >= sum/3 ? "YES": "NO"
    print(answer)
}

