//
//  Quicksort.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 59: Quicksort
 Difficulty: Tricky
 Create an extension for arrays that sorts them using the quicksort algorithm.
 Tip #1: The quicksort algorithm picks an item from its array to use as the pivot point, then splits itself into either two parts (less than or greater than) or three (less, greater, or equal). These parts then repeat the pivot and split until the entire array has been split, then it gets rejoined so that less, equal, and greater are in order.
 Tip #2: I can write quicksort from memory, but I cannot write fully optimized quicksort from memory. It’s a complex beast to wrangle, and it requires careful thinking – honestly, I have better things to keep stored in what little space I have up there! So, don’t feel bad if your attempt is far from ideal: there’s no point creating a perfect solution if you struggle to remember it during an interview.
 Tip #3: Quicksort is an algorithm so well known and widely used that you don’t even write a space in its name – it’s “quicksort” rather than “quick sort”.
 Sample input and output
     •    The array[12, 5, 4, 9, 3, 2, 1]should become[1, 2, 3, 4, 5, 9, 12].  
     •    The array ["f", "a", "b"] should become ["a", "b", "f"].  
     •    The array [String]() should become [].
 */

extension Array where Element: Comparable {
    
    func quicksort() -> [Element] {
        
        guard !isEmpty else { return self }
        
        // pivot on the center of the array
        let pivot = self[count / 2]
        
        // create three new buckets that we'll sort ourselves into
        var before = [Element]()
        var after = [Element]()
        var equal = [Element]()
        
        // loop over all items, placing each one into a bucket by comparing against our pivot
        for item in self {
            
            if item < pivot {
                before.append(item)
            } else if item > pivot {
                after.append(item)
            } else {
                equal.append(item)
            }
        }
        
        // call this function recursively then return the combined input
        return before.quicksort() + equal + after.quicksort()
    }
    
    func quicksort2() -> [Element] {
        
        guard count > 1 else { return self }
        
        let pivot = self[count / 2]
        let before = filter { $0 < pivot }
        let after = filter { $0 > pivot }
        let equal = filter { $0 == pivot }
        
        return before.quicksort2() + equal + after.bubbleSort2()
    }
    
    mutating func quicksort3(left: Int, right: Int) {
        
        // make sure we hav ea sensible range to work with
        guard left < right else { return }
        
        // use the righthand element, because thats moved last
        let pivot = self[right]
        
        // use our split point - the marker where elements start being greater than the pivot - to be the left edge
        var splitPoint = left
        
        // count through all the items in the array
        for i in left ..< right {
            
            // if this item is less then our pivot
            if self[i] < pivot {
                
                // move it so thats it at the split point
                (self[i], self[splitPoint]) = (self[splitPoint], self[i])
                
                // than move the split point forward one place
                splitPoint += 1
            }
        }
        
        // move our pivot item to the split point
        (self[right], self[splitPoint]) = (self[splitPoint], self[right])
        
        // recursively call this function on everything before the split...
        quicksort3(left: left, right: splitPoint - 1)
        
        // and everythig after the split
        quicksort3(left: splitPoint + 1, right: right)
    }
}
