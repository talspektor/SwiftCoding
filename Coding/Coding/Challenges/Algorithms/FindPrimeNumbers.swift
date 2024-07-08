//
//  FindPrimeNumbers.swift
//  Coding
//
//  Created by Tal Spektor on 08/07/2024.
//

import Foundation
/*
 Challenge 61: Find prime numbers
 Difficulty: Tricky Write a function that returns an array of prime numbers from 2 up to but excluding N, taking
 care to be as efficient as possible. Tip: Calculating primes is easy. Calculating primes efficiently is not. Take care!
 Sample input and output
     •    The code challenge61(upTo: 10) should return 2, 3, 5, 7.  
     •    The code challenge61(upTo: 11) should return 2, 3, 5, 7; remember to exclude  the upper bound.  
     •    The code challenge61(upTo: 12) should return 2, 3, 5, 7, 11.
 */

struct FindPrimeNumbers {
    
    // my first solution
    func findPromeNumbers(upTo: Int) -> [Int] {
        
        guard upTo > 2 else {
            return []
        }
        
        var primeNumbers = Set(2..<upTo)
        
        var notPrimeNumbers = Set<Int>()
        
        let min = Int(ceil(sqrt(Double(upTo))))
        
        for num in 3 ..< upTo {
            
            for num1 in 2 ..< upTo {
                if num != num1, num % num1 == 0  {
                    notPrimeNumbers.insert(num)
                    print("num = \(num), num1 = \(num1)")
                }
            }
        }
        
        return primeNumbers.subtracting(notPrimeNumbers).sorted()
    }
    
    func findPromeNumbers2(upTo max: Int) -> [Int] {
        
        guard max > 1 else { return [] }
        
        var sieve = [Bool](repeating: true, count: max)
        sieve[0] = false
        sieve[1] = false
        
        for number in 2 ..< max {
            
            if sieve[number] == true {
                
                for multiple in stride(from: number * number, to: sieve.count, by: number) {
                    
                    sieve[multiple] = false
                }
            }
        }
        
        return sieve.enumerated().compactMap { $1 == true ? $0 : nil }
    }
}
