//
//  BalancedBrackets.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 58: Balanced brackets
 Difficulty: Easy
 Write a function that accepts a string containing the characters (, [, {, <, >, }, ], and ) in any arrangement and frequency. It should return true if the brackets are opened and closed in the correct order, and if all brackets are closed. Any other input should false.
 Sample input and output
     •    The string “()” should return true.  
     •    The string “([])” should return true.  
     •    The string “([])(<{}>)” should return true.  
     •    The string “([]{}<[{}]>)” should return true.  
     •    The string “” should return true.  
     •    The string “}{” should return false.  
     •    The string “([)]” should return false.  
     •    The string “([)” should return false.  
     •    The string “([” should return false.  
     •    The string “[<<<{}>>]” should return false.  
     •    The string “hello” should return false.
 */

public struct BalancedBrackets {
    
    func isBalanceBrackets(input: String) -> Bool {
        
        let validBrackets = "([{<>}]))"
        let validCharactersSet = CharacterSet(charactersIn: validBrackets).inverted
        
        guard input.rangeOfCharacter(from: validCharactersSet) == nil else { return false }
        
        let matchingBrackets: [Character: Character] = ["(": ")", "[": "]", "{": "}", "<": ">"]
        var usedBrackets = [Character]()
        
        for bracket in input {
            
            if matchingBrackets.keys.contains(bracket) {
                
                // this is an opening bracket
                usedBrackets.append(bracket)
                
            } else {
                
                // this is a closing bracket - try to pull off our previous open
                if let previousBracket = usedBrackets.popLast() {
                    
                    if matchingBrackets[previousBracket] != bracket {
                        // if they don't match, this is a bad string
                        return false
                    }
                }
            }
        }
        
        return usedBrackets.count == 0
    }
}
