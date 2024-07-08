//
//  CollectionMissingNumberInArray.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 40: Missing numbers in array
 Difficulty: Easy Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or more
 numbers might be missing, and returns an array of the missing numbers.
 Sample input and output
 If your test array were created like this:
 var testArray = Array(1...100)
 testArray.remove(at: 25)
 testArray.remove(at: 20)
 testArray.remove(at: 6)

 Then your method should [7, 21, 26], because those are the numbers missing from the array.
 */

public struct CollectionMissingNumberInArray {
    
    func missingNumbersInArray(input: [Int]) -> [Int] {
        
        let correctArray = Array(1...100)
        var missingNumbers = [Int]()
        
        for number in correctArray {
            
            if !input.contains(number) {
                
                missingNumbers.append(number)
            }
        }
        
        return missingNumbers
    }
    
    func missingNumbersInArraySet(input: [Int]) -> [Int] {
        
        let correctArray = Array(1...100)
        let inputSet = Set(input)
        var missingNumbers = [Int]()
        
        for number in correctArray {
            
            if !inputSet.contains(number) {
                
                missingNumbers.append(number)
            }
        }
        
        return missingNumbers
    }
    
    func missingNumbersInArraySet2(input: [Int]) -> [Int] {
        
        let testSet = Set(1...100)
        let inputSet = Set(input)
        
        return Array(testSet.subtracting(inputSet)).sorted()
    }
}
