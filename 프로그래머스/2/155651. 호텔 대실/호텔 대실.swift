func solution(_ bookTime: [[String]]) -> Int {
    var answer = 1
    
    // [["HH:MM", "HH:MM"], ...] 를 시:분이 아닌 총 몇분인지로 변환 
    var bookTimeRef = bookTime.map { timeRange -> (Int, Int) in
        let startTime = timeRange[0]
        let endTime = timeRange[1]
        let startMins = Int(startTime.prefix(2))! * 60 + Int(startTime.suffix(2))!
        let endMins = Int(endTime.prefix(2))! * 60 + Int(endTime.suffix(2))!
        return (startMins, endMins)
    } // [(String,String)] 으로 반환함 
    
    // 시작시간이 빠른 순으로 정렬 
    bookTimeRef.sort(by: { $0.0 < $1.0 })
    
    // 종료시간을 추적하는 최소 힙 
    // 최소 힙은 'n' 수준의 모든 노드가 'n+1' 수준의 자식 노드보다 작거나 같은 값을 저장하는 속성
    var heap = [Int]() 
    
    for (start, end) in bookTimeRef {
        // 힙이 비었을 경우, 첫번째이므로 종료 시간을 넣어준다 
        if heap.isEmpty {
            heap.append(end+10)
            continue
        }
        
        // 첫번째의 종료시간이 시작시간보다 짧은 경우 
        if heap[0] <= start {
            heap.removeFirst() // 방이 1개만 있어도 되니까 첫번째껄 pop-out 
        } else {
            answer += 1 // 새 방이 필요하므로 +1개 
        }
        
        heap.append(end + 10) // 종료시간 + 10분의 청소시간이 필요함 
        heap.sort() // 큐 우선순위 최적화를 위화여 재정렬 
    }
    
    return answer
}