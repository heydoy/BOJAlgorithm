import Foundation

// 참고 1: https://velog.io/@carrotcookie/프로그래머스-도넛과-막대-그래프
// 참고 2: https://velog.io/@mino0121/ProgrammersPython-도넛과-막대그래프

func solution(_ edges: [[Int]]) -> [Int] {
    var answer = [0, 0, 0, 0]

    // 주고 받은 것 카운트하는 딕셔너리 
    var edgeCountList = [Int: [Int]]()  
    
    for edge in edges {
        // edge = [a,b]
        // a->b로 가는 간선이 있다는 뜻 
        let a = edge[0]
        let b = edge[1]
        
        if edgeCountList[a] == nil {
            edgeCountList[a] = [0, 0]
        }
        if edgeCountList[b] == nil {
            edgeCountList[b] = [0, 0]
        }
        
        // a: a가 b에게 준 것 
        // b: b가 a에게 받은 것
        edgeCountList[a]![0] += 1
        edgeCountList[b]![1] += 1
    }
    
    for (key, edgeCount) in edgeCountList {
        // 생성된 정점: 준 것 2개 이상 
        if edgeCount[0] >= 2 && edgeCount[1] == 0 {
            answer[0] = key
        }
        // 막대그래프: 준 것 X 받은 것만 있는지 체크 
        else if edgeCount[0] == 0 && edgeCount[1] > 0 {
            answer[2] += 1
        }
        // 8자 그래프: 준 것, 받은 것 각각 2개 이상
        else if edgeCount[0] >= 2 && edgeCount[1] >= 2 {
            answer[3] += 1
        }
    }
    
    // 도넛그래프: 전체 그래프 개수인 생성점의 준 것에서 2종류의 그래프를 빼기
    answer[1] = (edgeCountList[answer[0]]![0] - answer[2] - answer[3])

    return answer
}
