//
//  AddNumbersInsideAString.swift
//  Coding
//
//  Created by Tal Spektor on 02/07/2024.
//

import Foundation
/*
 Challenge 24: Add numbers inside a string
 Difficulty: Tricky Given a string that contains both letters and numbers, write a function that pulls out all the
 numbers then returns their sum.
 Sample input and output
     •    The string “a1b2c3” should return 6 (1 + 2 + 3).  
     •    The string “a10b20c30” should return 60 (10 + 20 + 30).  
     •    The string “h8ers” should return “8”.
 */
public struct AddNumbersInsideAString {
    
    func addNumbersInsideAString(string: String) -> Int {
        
        var sum = 0
        
        for letter in string {
            
            if let number = Int(String(letter)) {
                sum += number
            }
        }
        
        return sum
    }
    
    func addNumbersInsideAString2(string: String) -> Int {
        
        let regex = try! NSRegularExpression(pattern: "(\\d+)", options: [])
        let matches = regex.matches(in: string, range: NSRange(location: 0, length: string.utf16.count))
        let allNumbers = matches.compactMap { Int((string as NSString).substring(with: $0.range)) }
        
        return allNumbers.reduce(0, +)
    }
}
