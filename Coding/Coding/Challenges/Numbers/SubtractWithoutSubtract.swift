//
//  SubtractWithoutSubtract.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 26: Subtract without subtract
 Difficulty: Taxing Create a function that subtracts one positive integer from another, without using -.
 Sample input and output
     •    The code challenge26(subtract: 5, from: 9) should return 4.  
     •    The code challenge26(subtract: 10, from: 30) should return 20.
 */
public struct SubtractWithoutSubtract {
    
    func accept(subtract: Int, from: Int) -> Int {
        
        return from + -subtract
    }
    
    func accept2(subtract: Int, from: Int) -> Int {
        
        return from + -1 * subtract
    }
    
    func accept3(subtract: Int, from: Int) -> Int {
        
        return from + (~subtract + 1)
    }
}

