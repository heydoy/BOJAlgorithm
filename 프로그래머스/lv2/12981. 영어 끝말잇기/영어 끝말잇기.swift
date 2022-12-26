import Foundation

func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    for (index, word) in words.enumerated() {
        if index == 0 { continue }
            let prevArray = words[..<index]
            let prevWord = Array(words[index-1])
            let currentWord = Array(word)
        
        if prevArray.contains(word) || prevWord[prevWord.count - 1] != currentWord[0] || word.count <= 1 {
            let person: Int = index % n + 1
            let turn: Int = index / n + 1
            return [ person, turn  ]
         } 
    } 
    
    return [0, 0]
    
}