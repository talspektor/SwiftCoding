//
//  CollectionsRecreatingIndex.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 42: Recreate index(of:)
 Difficulty: Easy Write an extension for all collections that reimplements the index(of:) method.
 Tip: This is one of the easiest standard library methods to reimplement, so please give it an especially good try before reading any hints.
 Sample input and output
     •    The code [1, 2, 3].challenge42(indexOf: 1) should return 0.  
     •    The code [1, 2, 3].challenge42(indexOf: 3) should return 2.  
     •    The code [1, 2, 3].challenge42(indexOf: 5) should return nil.
 */

extension Collection where Element: Equatable {
    
    func myIndex(indexOf search: Element) -> Index? {

        return firstIndex(where: { search == $0 })
    }
    
    func myIndex2(indexOf search: Element) -> Int? {

        for (index, item) in enumerated() {
            if search == item {
                return index
            }
        }
        
        return nil
    }
}
