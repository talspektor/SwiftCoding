//
//  RecteateMap.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 46: Recreate map()
 Difficulty: Tricky Write an extension for all collections that reimplements the map() method.
 Sample input and output
     •    The code [1, 2, 3].challenge46 { String($0) } should return [“1”, "2", "3"]  
     •    The code ["1", "2", "3"].challenge46 { Int($0)! } should return [1, 2, 3].
 */

extension Collection {
    
    func myMap<T>(_ transform: (Element) throws -> T) rethrows -> [T] {
    
        var returnValue = [T]()
        
        for element in self {
            
            returnValue.append(try transform(element))
        }
        
        return returnValue
    }
}
