import Foundation

func solution(_ n:Int, _ costs:[[Int]]) -> Int {
    var answer = 0
    // 비용이 적은 순으로 정렬 
    var costs = costs.sorted { $0[2] < $1[2] }
    var link: Set<Int> = [costs[0][0]] // 시작 연결점. 제일 낮은 순이니까 맨 앞임. 

    // Kruskal 알고리즘으로 최소 비용 구하기
    while link.count != n {
        for v in costs {
            // 링크에 이미 있을 경우 
            if link.contains(v[0]) && link.contains(v[1]) {
                continue
            }
            // 두 섬중 하나가 연결되지 않았을 경우 
            if link.contains(v[0]) || link.contains(v[1]) {
                // set 업데이트 
                link.insert(v[0])
                link.insert(v[1])
                // 비용도 업데이트 
                answer += v[2]
                break
            }
        }   
    }
    return answer
}