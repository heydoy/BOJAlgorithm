import Foundation

func solution(_ n: Int) -> [[Int]] {
    var answer = Array<Array<Int>>()
    
    func hanoi(_ start: Int, _ to: Int, _ layover: Int, _ n: Int) {
        // 원판이 1개면 바로 옮기면 되므로 
        if n == 1 {
            answer.append([start, to])
        }
        // n-1개의 원판을 출발 기둥에서 중간 기둥으로 이동 - 재귀 호출
        // n번째 원판을 출발 기둥에서 도착 기둥으로 이동
        // n-1개의 원판을 중간 기둥에서 도착 기둥으로 이동 - 재귀 호출
        else {
            hanoi(start,layover,to,n-1)
            hanoi(start,to,layover,1)
            hanoi(layover,to,start,n-1)
        }
    }
    // 1번이 시작, 3번이 타겟, 2번은 중간지점 (경유위치)
    hanoi(1,3,2,n)
    
    return answer
}