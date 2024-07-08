//
//  Challenge15.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 15: Reverse the words in a string
 Difficulty: Taxing Write a function that returns a string with each of its words reversed but in the original order,
 without using a loop.
 Sample input and output
     •    The string “Swift Coding Challenges” should return “tfiwS gnidoC segnellahC”.  
     •    The string “The quick brown fox” should return “ehT kciuq nworb xof”.
 */

struct Challenge15 {
    
    func reverceWords(input: String) -> String {
        
        let parts: [String] = input.components(separatedBy: " ")
        let reversedArr = parts.map { String($0.reversed()) }
        
        return reversedArr.joined(separator: " ")
    }
}
