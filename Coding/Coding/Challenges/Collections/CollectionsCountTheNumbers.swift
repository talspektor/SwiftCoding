//
//  CollectionsCountTheNumbers.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 37: Count the numbers
 Difficulty: Easy Write an extension for collections of integers that returns the number of times a specific digit
 appears in any of its numbers.
 Sample input and output
     •    The code [5, 15, 55, 515].challenge37(count: "5") should return 6.  
     •    The code [5, 15, 55, 515].challenge37(count: "1") should return 2.  
     •    The code [55555].challenge37(count: "5") should return 5.  
     •    The code [55555].challenge37(count: "1") should return 0.
 */

public extension Collection where Element == Int {
    
    func countTheNumbers(count: String) -> Int {
        
        let stringCollection = map { String($0) }
        
        var numCount = 0
        
        for item in stringCollection {
            numCount += item.filter { String($0) == count }.count
        }
        
        return numCount
    }
    
    func countTheNumberReduce(count: Character) -> Int {
        
        return reduce(0) {
            $0 + String($1).filter { $0 == count }.count
        }
    }
}
