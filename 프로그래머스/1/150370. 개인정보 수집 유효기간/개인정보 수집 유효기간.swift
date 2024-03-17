import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    // today: 오늘날짜 YYYY.MM.DD
    // terms: "약관종류(String) 유효기간(달수 = Int)"
    // privacies: "개인정보 수집일자(YYYY.MM.DD) 약관종류(terms)"
    // 모든 달은 *28일*까지 있다고 가정
    // 총 날수를 기준으로 계산하기 
    
    let convertedToday = convertToDay(today)
    var expiration: [String:Int] = [:] // 이용약관: 총 날수 
    var answer = [Int]()
    
    for i in 0..<terms.count {
        let components = terms[i].components(separatedBy: " ")
        let term = components[0]
        expiration[term] = Int(components[1])!*28
    }
    
    for i in 0..<privacies.count { 
        let components = privacies[i].components(separatedBy: " ")
        let (date, term) = (components[0], components[1])
        
        if convertToDay(date) + expiration[term]! - 1 < convertedToday {
            answer.append(i+1)
        }
    }
    return answer
}

func convertToDay(_ date: String) -> Int {
    let items = date.components(separatedBy: ".")
    let y = Int(items[0])! * 28 * 12
    let m = Int(items[1])! * 28
    let d = Int(items[2])!
    
    return y+m+d
}