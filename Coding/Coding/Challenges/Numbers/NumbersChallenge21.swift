//
//  NumbersChallenge21.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 21: Counting binary ones
 Difficulty: Tricky
 Create a function that accepts any positive integer and returns the next highest and next lowest number that has the same number of ones in its binary representation. If either number is not possible, return nil for it.
 Sample input and output
     •    The number 12 is 1100 in binary, so it has two 1s. The next highest number with that many 1s is 17, which is 10001. The next lowest is 10, which is 1010.  
     •    The number 28 is 11100 in binary, so it has three 1s. The next highest number with that many 1s is 35, which is 100011. The next lowest is 26, which is 11010.
 */
public struct NumbersChallenge21 {
    
    func countingBinaryOnes(number: Int) -> (highest: Int?, lowest: Int?) {
       
        let targetBinary = String(number, radix: 2)
        let targerOnes = targetBinary.filter { $0 == "1" }.count
        
        var nextHighest: Int? = nil
        var nextLowest: Int? = nil
        
        for i in number + 1...Int.max {
            
            let currentBinary = String(i, radix: 2)
            let currentOnes = currentBinary.filter { $0 == "1" }.count
            
            if targerOnes == currentOnes {
                
                nextHighest = i
                break
            }
        }
        
        for i in (0 ..< number).reversed() {
            
            let currerntBinary = String(i, radix: 2)
            let currentOnse = currerntBinary.filter { $0 == "1" }.count
            
            if targerOnes == currentOnse {
                
                nextLowest = i
                break
            }
        }
        
        return (nextHighest, nextLowest)
    }
    
    func countingBinaryOnes2(number: Int) -> (nextHighest: Int?, nextLowest: Int?) {
        func ones(in number: Int) -> Int {
            
            let currentBinary = String(number, radix: 2)
            
            return currentBinary.filter { $0 == "1" }.count
        }
        
        let targetOnes = ones(in: number)
        var nextHighest: Int? = nil
        var nextLowest: Int? = nil
        
        for i in number + 1...Int.max {
            
            if ones(in: i) == targetOnes {
                
                nextHighest = i
                break
            }
        }
        
        for i in (0 ..< number).reversed() {
            
            if ones(in: i) == targetOnes {
                nextLowest = i
                break
            }
        }
        
        return (nextHighest, nextLowest)
    }
}
