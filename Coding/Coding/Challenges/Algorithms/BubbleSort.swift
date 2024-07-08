//
//  BubbleSort.swift
//  Coding
//
//  Created by Tal Spektor on 07/07/2024.
//

import Foundation
/*
 Challenge 55: Bubble sort
 Difficulty: Easy Create an extension for arrays that sorts them using the bubble sort algorithm.
 Tip: A bubble sort repeatedly loops over the items in an array, comparing items that are next to each other and swapping them if they aren’t sorted. This looping continues until all items are in their correct order.
 Sample input and output
     •    The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].  
     •    The array ["f", "a", "b"] should become ["a", "b", "f"].  
     •    The array [String]() should become [].
 */

extension Array where Element: Comparable {
    
    func bubbleSort() -> Self {
        
        // refuse to sort invalid arrays
        guard !self.isEmpty else { return self }
        
        var returnValue = self
        var swapsMade: Bool
        
        repeat {
            
            // we're looping from scratch, so reset swapsMade to false
            swapsMade = false
            
            // loop over all items in the array, excluding the last one
            for index in 0 ..< returnValue.count - 1 {
                
                // pull out the current element and its successor
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                // if the current one is bigger then its successor...
                if (element > next) {
                    
                    // swap them
                    returnValue.swapAt(index, index + 1)
                    
                    // and lark that we made a swap so the loop will repeat
                    swapsMade = true
                }
            }
        } while swapsMade == true
        
        // self back the sorted array
        return returnValue
    }
    
    func bubbleSort2() -> [Element] {
        
        guard !isEmpty else { return [Element]() }
        
        var returnValue = self
        var highestSortedIndex = count
        
        repeat {
            var lastSwapeIndex = 0
            
            for index in 0 ..< highestSortedIndex - 1 {
                
                let element = returnValue[index]
                let next = returnValue[index + 1]
                
                if (element > next) {
                    
                    returnValue.swapAt(index, index + 1)
                    lastSwapeIndex = index + 1
                }
            }
            
            highestSortedIndex = lastSwapeIndex
        } while highestSortedIndex != 0
        
        return returnValue
    }
}
