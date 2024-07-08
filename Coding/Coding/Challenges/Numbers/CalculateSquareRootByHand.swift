//
//  CalculateSquareRootByHand.swift
//  Coding
//
//  Created by Tal Spektor on 02/07/2024.
//

import Foundation
/*
 Challenge 25: Calculate a square root by hand
 Difficulty: Taxing Write a function that returns the square root of a positive integer, rounded down to the nearest
 integer, without using sqrt().
 Sample input and output
     •    The number 9 should return 3.  
     •    The number 16777216 should return 4096.  
     •    The number 16 should return 4.  
     •    The number 15 should return 3.
 */
public struct CalculateSquareRootByHand {
    
    func accept(input: Int) -> Int {
        
        for i in 0...input {
            if i * i > input {
                return i - 1
            }
        }
        
        return 0
    }
    
    func accept2(input: Int) -> Int {
        
        guard input != 1 else { return 1 }
        
        var lowerBound = 0
        var upperBound = 1 + input / 2
        
        while lowerBound + 1 < upperBound {
            
            let middle = lowerBound + ((upperBound - lowerBound) / 2)
            let middleSquared = middle * middle
            
            if middleSquared == input {
                return middle
            } else if middleSquared < input {
                lowerBound = middle
            } else {
                upperBound = middle
            }
        }
        
        return lowerBound
    }
    
    func accept3(input: Int) -> Int {
        
        return Int(floor(pow(Double(input), 0.5)))
    }
    
}
