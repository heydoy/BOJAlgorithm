import Foundation 

// 00:00 ~ start 까지 채팅을 남긴 유저 중에서 end~stream사이에 채팅을 남긴 유저숫자 

var answer = 0 

let time = readLine()!.split(separator: " ").map { String($0)}
let (start, end, stream) = (time[0].split(separator: ":"), time[1].split(separator: ":"), time[2].split(separator: ":"))

let startTime = Int(start[0])!*60 + Int(start[1])!
let endTime = Int(end[0])!*60 + Int(end[1])!
let streamTime = Int(stream[0])!*60 + Int(stream[1])!

var userList = [String: Int]()

while true { 
    var chat: String? = readLine() 
    guard chat != nil else { break }
    
    let chatSep = chat!.split(separator: " ")
    let name = String(chatSep[1])
    let time = Int(chatSep[0].split(separator: ":")[0])!*60 + Int(chatSep[0].split(separator: ":")[1])!
    
    if time <= startTime { 
        if userList[name] == nil { userList[name] = 1 }
    } else if time >= endTime && time <= streamTime {
        if let user = userList[name] {
            if user == 1 {
                userList[name]! += 1
                answer += 1 
            }
        }
    } 
}

print(answer)
