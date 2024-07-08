import UIKit

func challenge1a(input: String) -> Bool {
    var set = Set<Character>()
    
    for char in input {
        
        if set.contains(char) {
            return false
        }
        set.insert(char)
    }
    return true
}

func challenge1b(input: String) -> Bool {
    let set = Set(input)
    print(set)
    return Set(input).count == input.count
}


//challenge1b(input: "No duplicates") //should return true
//challenge1b(input: "abcdefghijklmnopqrstuvwKyz") //should return true
//challenge1b(input: "AaBbCc")//  should return true
//challenge1b(input: "Hello, world") //should return false


/*
•    The string “rotator” should return true.  
•    The string “Rats live on no evil star” should return true.  
•    The string “Never odd or even” should return false; even though the letters are the
*/
func isPalindrome(input: String) -> Bool {
    return input.lowercased().reversed() == Array(input.lowercased())
}

//isPalindrome(input: "rotator")
//isPalindrome(input: "Hello world")
//isPalindrome(input: "Never odd or even")

func isContainSameChars(input1: String, input2: String) -> Bool {
    if input1.count != input2.count {
        return false
    }
    for char in input1 {
        if !input2.contains(char) {
            return false
        }
    }
    return true
}

isContainSameChars(input1: "abca", input2: "abca")


