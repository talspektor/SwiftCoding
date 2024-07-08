//
//  SumEvenRepeats.swift
//  Coding
//
//  Created by Tal Spektor on 04/07/2024.
//

import Foundation
/*
 Challenge 49: Sum the even repeats
 Difficulty: Tricky Write a function that accepts a variadic array of integers and return the sum of all numbers that
 appear an even number of times.
 Sample input and output
     •    The code challenge49(1, 2, 2, 3, 3, 4) should return 5, because the numbers 2 and 3 appear twice each.  
     •    The code challenge49(5, 5, 5, 12, 12) should return 12, because that’s the only number that appears an even number of times.  
     •    The code challenge49(1, 1, 2, 2, 3, 3, 4, 4)` should return 10.
 */

public struct SumEvenRepeats {
    
    func sumEvenRepeats(_ numbers: Int...) -> Int {
        
        let countedSet: NSCountedSet = NSCountedSet(array: numbers)
        var sum = 0
        
        for case let number as Int in countedSet {
            
            if countedSet.count(for: number) % 2 == 0 {
                sum += number
            }
        }
        
        return sum
    }
    
    func sumEvenRepeats2(_ numbers: Int...) -> Int {
        
        let countedSet: NSCountedSet = NSCountedSet(array: numbers)
        let array = countedSet.allObjects as! [Int]
        var sum = 0
        
        for number in array {
            
            if countedSet.count(for: number) % 2 == 0 {
                sum += number
            }
        }
        
        return sum
    }
}
