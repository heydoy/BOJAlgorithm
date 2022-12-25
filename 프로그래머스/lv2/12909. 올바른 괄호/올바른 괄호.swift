import Foundation

func solution(_ s:String) -> Bool {
    var stack: [String] = []
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    var ans = true
    s.forEach {
        let a = String($0)
        if a == "(" {
            stack.append(a)
        } else if a == ")" {
            if !stack.isEmpty {
                let _ = stack.popLast()
            } else { 
                ans = false
            }
        }
    }
    
    return stack.isEmpty && ans ? true : false
}