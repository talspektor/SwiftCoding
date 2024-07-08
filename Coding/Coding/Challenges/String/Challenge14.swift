//
//  Challenge14.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 14: String permutations
 Difficulty: Taxing Write a function that prints all possible permutations of a given input string.
 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.
 Sample input and output
     •    The string “a” should print “a”.  
     •    The string “ab” should “ab”, “ba”.  
     •    The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.
 */
public struct Challenge14 {
    
    public init() {}
    
    func allPermutation(string: String, current: String = "") {
        
        let length = string.count
        let strArray = Array(string)
        
        if (length == 0) {
            
            // theres nothing left to re-arrange, pring the result
            print(current)
            print("******")
            
        } else {
            
            print(current)
            
            // loop through every character
            for i in 0..<length {
                
                // let the letters before me
                let left = String(strArray[0..<i])
                
                // get the letters after me
                let right = String(strArray[i+1..<length])
                
                // put those two together and carry on
                allPermutation(string: left + right, current: current + String(strArray[i]))
            }
        }
    }
}
