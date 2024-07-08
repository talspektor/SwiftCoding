//
//  InsertSort.swift
//  Coding
//
//  Created by Tal Spektor on 07/07/2024.
//

import Foundation
/*
 Challenge 56: Insertion sort
 Difficulty: Easy Create an extension for arrays that sorts them using the insertion sort algorithm.
 Tip: An insertion sort creates a new, sorted array by removing items individually from the input array and placing them into the correct position in the new array.
 Sample input and output
     •    The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].  
     •    The array ["f", "a", "b"] should become ["a", "b", "f"].  
     •    The array [String]() should become [].
 */

extension Array where Element: Comparable {
    
    func insertSort() -> [Element] {
        
        guard !isEmpty else { return [Element]() }
        
        var returnValue = [Element]()
        
        for unsorted in self {
            
            if returnValue.count == 0 {
                
                returnValue.append(unsorted)
                
            } else {
                
                var placed = false
                
                for (index, sorted) in returnValue.enumerated() {
                    
                    if unsorted < sorted {
                        
                        returnValue.insert(unsorted, at: index)
                        placed = true
                        break
                    }
                }
                if !placed {
                    
                    returnValue.append(unsorted)
                }
            }
        }
        
        return returnValue
    }
    
    func insertSort2() -> [Element] {
        
        guard count > 1 else { return self }
        var returnValue = self
        
        for i in 1 ..< count {
            
            var currentItemIndex = i
            
            // we take a copy of the current item
            let itemToPlace = returnValue[currentItemIndex]
            
            // keep going around until we're at the start of the array or find an item thats greater or equal to us
            while currentItemIndex > 0 && itemToPlace < returnValue[currentItemIndex - 1] {
            
                // move this item to the right
                returnValue[currentItemIndex] = returnValue[currentItemIndex - 1]
                currentItemIndex -= 1
            }
            
            // place our item into its newly sorted place
            returnValue[currentItemIndex] = itemToPlace
        }
        
        return returnValue
    }
}
