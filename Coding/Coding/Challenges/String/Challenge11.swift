//
//  Challenge11.swift
//  Coding
//
//  Created by Tal Spektor on 30/06/2024.
//

import Foundation


/*
 Challenge 11: Three different letters
 Difficulty: Tricky Write a function that accepts two strings, and returns true if they are identical in length but
 have no more than three different letters, taking case and string order into account.
 Sample input and output
     •    The strings “Clamp” and “Cramp” would return true, because there is one letter difference.  
     •    The strings “Clamp” and “Crams” would return true, because there are two letter differences.  
     •    The strings “Clamp” and “Grams” would return true, because there are three letter differences.  
     •    The strings “Clamp” and “Grans” would return false, because there are four letter differences.  
     •    The strings “Clamp” and “Clam” would return false, because they are different lengths.  
     •    The strings “clamp” and “maple” should return false. Although they differ by only one  letter, the letters that match are in different positions.  Hints  Hint #1: If you value your sanity, get both strings into arrays as quickly as possible. Hint #2: You probably want to use the enumerated() method on one array, to get the  index and character at the same time.  Hint #3: Your function should return false as soon as it reaches four differences; there’s no point continuing to check characters.  Hint #4: Make sure you check the strings are the same size first, preferably using guard.
 */

extension String {
    
    public func isSimilarTo(string: String) -> Bool {
        
        guard count == string.count else {
            return false
        }
        
        let selfArr = Array(self)
        let similarArr = Array(string)
        var counter = 0
        
        for (index, char) in selfArr.enumerated() where counter < 4 {
            if char != similarArr[index] {
                counter += 1
            }
        }
        
        return counter < 4
    }
}

