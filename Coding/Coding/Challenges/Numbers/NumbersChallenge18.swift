//
//  NumbersChallenge18.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 18: Recreate the pow() function
 Difficulty: Easy Create a function that accepts positive two integers, and raises the first to the power of the
 second. Tip: If you name your function myPow() or challenge18(), you’ll be able to use the
 built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.
 Sample input and output
     •    The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.  
     •    The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.
 */
public struct NumbersChallenge18 {
    
    func myPow(first: Int, second: Int) -> Int {
        
        guard first > 0 && second > 0 else { return 0 }
        
        var returnValue = first
        
        for _ in 1..<second {
            
            returnValue *= first
        }
        
        return returnValue
    }
    
    func myPow2(number: Int, power: Int) -> Int {
        
        guard number > 0 && power > 0 else { return 0 }
        
        if power == 1 { return number }
        
        return number * myPow2(number: number, power: power - 1)
    }
}
