//
//  SortStringArrayByLength.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 39: Sort a string array by length
 Difficulty: Easy Extend collections with a function that returns an array of strings sorted by their lengths,
 longest first.
 Sample input and output
     •    The code ["a", "abc", "ab"].challenge39() should return ["abc", "ab", "a"].  
     •    The code ["paul", "taylor", "adele"].challenge39() should return ["taylor", "adele", "paul"].
 */

extension Collection where Element == String {
    
    func sortStringArrayByLength() -> [String] {
        
        return sorted { $0.count > $1.count }
    }
}
