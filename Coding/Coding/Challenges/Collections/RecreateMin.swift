//
//  RecreateMin.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 47: Recreate min()
 Difficulty: Tricky Write an extension for all collections that reimplements the min() method.
 Sample input and output
     •    The code [1, 2, 3].challenge47() should return 1.  
     •    The code ["q", "f", "k"].challenge47() should return “f”.  
     •    The code [4096, 256, 16].challenge47() should return 16.  
     •    The code [String]().challenge47() should return nil.
 */

extension Collection where Element: Comparable {
    
    func myMin() -> Element? {
        
        let sorted = sorted()
        
        return sorted.first
    }
    
    func myMin2() -> Element? {
        
        var lowest: Element?
        
        for item in self {
            
            if let unwrappedLowest = lowest {
                if item < unwrappedLowest {
                    lowest = item
                }
            } else {
                lowest = item
            }
        }
        return lowest
    }
    
    func myMin3() -> Element? {
        guard var lowest = self.first else { return nil }
        
        for item in self {
            if item < lowest {
                lowest = item
            }
        }
        return lowest
    }
    
    func myMin4() -> Element? {
        var iterator = makeIterator()
        guard var lowest = iterator.next() else { return nil }
        
        while let item = iterator.next() {
            
            if item < lowest {
                lowest = item
            }
        }
        return lowest
    }
    
    func myMin5() -> Element? {
        guard let lowest = self.first else { return nil }
        
        return reduce(lowest) { $1 < $0 ? $1 : $0 }
    }
    
    func myMin6() -> Element? {
        var iterator = makeIterator()
        guard let lowest = iterator.next() else { return nil }
        
        return IteratorSequence(iterator).reduce(lowest) { $1 < $0 ? $1 : $0 }
    }
}
