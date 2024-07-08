//
//  Challenge13.swift
//  Coding
//
//  Created by Tal Spektor on 30/06/2024.
//

import Foundation

/*
 Challenge 13: Run-length encoding
 Difficulty: Taxing Write a function that accepts a string as input, then returns how often each letter is repeated in
 a single run, taking case into account.
 Tip: This approach is used in a simple lossless compression technique called run-length encoding.
 Sample input and output
     •    The string “aabbcc” should return “a2b2c2”.  
     •    The strings “aaabaaabaaa” should return “a3b1a3b1a3”  
     •    The string “aaAAaa” should return “a2A2a2”
 */

public extension String {
    
    func repeatCharCount() -> String {
        
        var currentLetter: Character?
        var returnValue = ""
        var letterCounter = 0
        
        for letter in self {
            
            if letter == currentLetter {
                
                letterCounter += 1
                
            } else {
                // Donot append in the first time
                if let current = currentLetter {
                    
                    returnValue.append("\(current)\(letterCounter)")
                }
                
                currentLetter = letter
                letterCounter = 1
            }
        }
        
        // Appen the last char + count
        if let current = currentLetter {
            
            returnValue.append("\(current)\(letterCounter)")
        }
        
        return returnValue
    }
    
    func repeatCharCount2() -> String {
        
        var returnValue = ""
        var letterCounter = 0
        var letterArray = Array(self)
        
        for i in 0..<letterArray.count {
            
            letterCounter += 1
            
            if i + 1 == letterArray.count || letterArray[i] != letterArray[i + 1] {
                
                returnValue += "\(letterArray[i])\(letterCounter)"
                letterCounter = 0
            }
                
        }
        
        return returnValue
    }
}
