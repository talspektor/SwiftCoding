//
//  Challenge7.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

// Condense whitespace
// Write a function that returns a string with ane consecutive spaces replaced with a single space

extension String {
    
    
    // not working
    func removeDoubleSpace() -> String {
        
        let components = (components(separatedBy: .whitespacesAndNewlines))
        
        return components.filter { !$0.isEmpty }.joined(separator: "")
    }
    
    func removeDoubleSpace2() -> String {
        
        var seenSpace = false
        var returnValue = ""
        
        for letter in self {
            
            if letter == " " {
                if seenSpace { continue }
                
                seenSpace = true
            } else {
                seenSpace = false
            }
            
            returnValue.append(letter)
        }
        
        return returnValue
    }
    
    // Slower but good
    func removeDoubleSpaceRegex() -> String {
        
        return replacingOccurrences(of: " +", with: " ", options: .regularExpression, range: nil)
    }
}
