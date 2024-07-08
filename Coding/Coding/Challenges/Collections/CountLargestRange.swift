//
//  CountLargestRange.swift
//  Coding
//
//  Created by Tal Spektor on 06/07/2024.
//

import Foundation
/*
 Challenge 50: Count the largest range
 Difficulty: Tricky
 Write a function that accepts an array of positive and negative numbers and returns a closed range containing the position of the contiguous positive numbers that sum to the highest value, or nil if nothing were found.
 Sample input and output
     •    The array [0, 1, 1, -1, 2, 3, 1] should return 4...6 because the highest sum of contiguous positive numbers is 2 + 3 + 1, which lie at positions 4, 5, and 6 in the array.  
     •    The array [10, 20, 30, -10, -20, 10, 20] should return 0...2.  
     •    The array [1, -1, 2, -1] should return 2...2.  
     •    The array [2, 0, 2, 0, 2] should return 0...0.  
     •    The array [Int]() should return nil.
 */

public struct CountLargestRange {
    
    func countLargestRange(_ numbers: [Int]) -> CountableClosedRange<Int>? {
        
        // this is the return value, nil by default
        var bestSum = 0
        var bestRange: CountableClosedRange<Int>? = nil
        
        // these track the current current sequence of positive integers
        var currentStart: Int? = nil
        var currentSum = 0
        
        for (index, number) in numbers.enumerated() {
            
            if number > 0 {
                // we dont have a start for the current range, set one now
                currentStart = currentStart ?? index
                currentSum += number
                
                if currentSum > bestSum {
                    // update our best range
                    bestRange = currentStart! ... index
                    bestSum = currentSum
                }
            } else {
                // reset the current range
                currentSum = 0
                currentStart = nil
            }
        }
        return bestRange
    }
}
