//
//  IsomorphicValues.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 57: Isomorphic values
 Difficulty: Easy Write a function that accepts two values and returns true if they are isomorphic. That is, each
 part of the value must map to precisely one other, but that might be itself.
 Tip: Strings A and B are considered isomorphic if you can replace all instances of each letter with another. For example, “tort” and “pump” are isomorphic, because you can replace both Ts with a P, the O with a U, and the R with an M. For integers you compare individual digits, so 1231 and 4564 are isomorphic numbers. For arrays you compare elements, so [1, 2, 1] and [4, 8, 4] are isomorphic.
 Sample input and output
 These are all isomorphic values:
     •    “clap” and “slap”  
     •    “rum” and “mud”  
     •    “pip” and “did”  
     •    “carry” and “baddy”  
     •    “cream” and “lapse”  
     •    123123 and 456456  
     •    3.14159 and 2.03048  
     •    [1, 2, 1, 2, 3] and [4, 5, 4, 5, 6]  These are not isomorphic values:  
     •    “carry” and “daddy” – the Rs have become D, but C has also become D.  
     •    “did” and “cad” – the first D has become C, but the second has remained D.  
     •    “maim” and “same” – the first M has become S, but the second has become E.  
     •    “curry” and “flurry” – the strings have different lengths.  
     •    112233 and 112211 – the number 1 is being mapped to 1, and the number 3 is also  being mapped to 1.  
 196
 */

public struct IsomorphicValues {
    
    func isIsomorphic(first: Any, second: Any) -> Bool {
        
        let first = String(describing: first)
        let second = String(describing: second)
        
        guard first.count == second.count else { return false }
        
        var charcterMap = [Character: Character]()
        let firstArray = Array(first)
        let secondArray = Array(second)
        
        for (index, character) in firstArray.enumerated() {
            
            let otherCharacter = secondArray[index]
            
            if let currentMapping = charcterMap[character] {
                if currentMapping != otherCharacter {
                    
                    return false
                }
            } else {
                
                if charcterMap.values.contains(otherCharacter) {
                    
                    return false
                }
                
                charcterMap[character] = otherCharacter
            }
        }
        
        return false
    }
}
