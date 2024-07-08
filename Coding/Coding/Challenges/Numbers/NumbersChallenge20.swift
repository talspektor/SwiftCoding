//
//  NumbersChallenge20.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 20: Number is prime
 Difficulty: Tricky Write a function that accepts an integer as its parameter and returns true if the number is prime.
 Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.
 Sample input and output
     •    The number 11 should return true.  
     •    The number 13 should return true.  
     •    The number 4 should return false.  
     •    The number 9 should return false.
 */

public struct NumbersChallenge20 {
    
    func isPrimeNumber(_ number: Int) -> Bool {
        
        guard number >= 2 else { return false }
        
        let max = Int(ceil(sqrt(Double(number) - 1)))
        
        for i in 2 ... max {

            if number % i == 0 {
                return false
            }
        }
        
        return true
    }
}
