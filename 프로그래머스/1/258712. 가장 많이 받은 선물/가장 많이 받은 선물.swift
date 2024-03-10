import Foundation

// 친구들 이름 friends
// 주고받은 선물기록 gifts ["준사람 받은사람", ...]
func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // 1. 둘 중에 선물을 더 많이 준 사람이 다음달에 하나 더 받는다. 
    // 2. 주고받은 기록이 없거나 주고받은 수가 같으면 선물지수가 더 큰 사람이 작은 사람에게 선물을 하나 받는다. 
    // 2-1. 선물지수: 총 준선물 - 총 받은선물 
    // 2-2. 선물지수까지 동일하다면 선물을 주고받지X
    // 3. 선물을 가장 많이 받을 친구가 받을 선물 갯수 
    
    // [준사람 : [받은사람: 횟수, 받은사람: 횟수]] 딕셔너리
    var giveAndTakeDict = [String: [String: Int]]()
    // [준사람: 선물지수]
    var giftIndexDict = [String:Int]()
    
    // 초기화
    for name in friends {
        giveAndTakeDict[name] = [String: Int]()
        giftIndexDict[name] = 0
    }
    
    // 선물 기록 파헤치기
    for gift in gifts {
        let giverAndTaker = gift.split(separator: " ").map { String($0) }
        let (giver, taker) = (giverAndTaker[0], giverAndTaker[1])
        
        if var didGiverInList = giveAndTakeDict[giver] {
            didGiverInList[taker, default: 0] += 1
            giveAndTakeDict[giver] = didGiverInList
        } else {
            giveAndTakeDict[giver] = [taker: 1]
        }
        giftIndexDict[giver, default: 0] += 1
        giftIndexDict[taker, default: 0] -= 1
    }
    
    // 다음달 선물 많이 받을 친구 계산하기 
    var nextMonthGift = [Int](repeating: 0, count: friends.count)
    
    // 루프 돌면서 계산
    for i in 0..<friends.count {
        let current = friends[i] // 기준
        for j in (i+1)..<friends.count {
            let next = friends[j] // 다음 
            // 준 선물횟수
            let currentGave = giveAndTakeDict[current]?[next] ?? 0
            let nextGave = giveAndTakeDict[next]?[current] ?? 0
            if currentGave > nextGave {
                nextMonthGift[i] += 1
            } else if currentGave < nextGave {
                nextMonthGift[j] += 1
            } else {
                // 선물 준 횟수가 동일할 경우 선물지수 계산하기 
                let currentIndex = giftIndexDict[current] ?? 0
                let nextIndex = giftIndexDict[next] ?? 0
                if currentIndex > nextIndex {
                    nextMonthGift[i] += 1
                } else if currentIndex < nextIndex {
                    nextMonthGift[j] += 1
                } 
                // 동일할 경우 선물 주고받지 X
            }
        }
    }
    
    let answer = nextMonthGift.max() ?? 0
    return answer

}