//
//  Challenge12.swift
//  Coding
//
//  Created by Tal Spektor on 30/06/2024.
//

import Foundation

/*
 Challenge 12: Find longest prefix
 Difficulty: Tricky Write a function that accepts a string of words with a similar prefix, separated by spaces, and
 returns the longest substring that prefixes all words.
 Sample input and output
     •    The string “swift switch swill swim” should return “swi”.
 •    The string “flip flap flop” should return “fl”.
 */

public extension String {
    
    func findLongestPrefix() -> String {
        
        let parts = components(separatedBy: " ")
        
        guard let first = parts.first else { return "" }
        
        var currentPrefix = ""
        var bestPrefix = ""
        
        for letter in first {
            
            currentPrefix.append(letter)
            
            for word in parts {
                
                if !word.hasPrefix(currentPrefix) {
                    return bestPrefix
                }
            }
            
            bestPrefix = currentPrefix
        }
        
        return bestPrefix
    }
}
