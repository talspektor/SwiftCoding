//
//  CollectionFindTheMedian.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 41: Find the median
 Difficulty: Easy Write an extension to collections that accepts an array of Int and returns the median average,
 or nil if there are no values.
 Tip: The mean average is the sum of some numbers divided by how many there are. The median average is the middle of a sorted list. If there is no single middle value – e.g. if there are eight numbers - then the median is the mean of the two middle values.
 Sample input and output
     •    The code [1, 2, 3].challenge41() should return 2.  
     •    The code [1, 2, 9].challenge41() should return 2.  
     •    The code [1, 3, 5, 7, 9].challenge41() should return 5.  
     •    The code [1, 2, 3, 4].challenge41() should return 2.5.  
     •    The code [Int]().challenge41() should return nil.
 */

extension Collection where Element == Int {
    
    func collectionFindTheMedian() -> Double? {
        
        guard !isEmpty else { return nil }
        
        let sorted = sorted()
        let count = sorted.count
        let middle = count / 2
        
        if count % 2 == 0 {
            return Double((sorted[middle]) + (sorted[middle-1])) / 2
        } else {
            return Double(sorted[middle])
        }
    }
}
