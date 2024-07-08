//
//  SumArrayOfNumbers.swift
//  Coding
//
//  Created by Tal Spektor on 07/07/2024.
//

import Foundation
/*
 Challenge 52: Sum an array of numbers
 Difficulty: Taxing Write one function that sums an array of numbers. The array might contain all integers, all
 doubles, or all floats.
 Tip: If you think this challenge is easy, you’re either a hardened Swift pro or you’ve underestimated the problem.
 Sample input and output
     •    The code challenge52(numbers: [1, 2, 3]) should return 6.  
     •    The code challenge52(numbers: [1.0, 2.0, 3.0]) should return 6.0.  
     •    The code challenge52(numbers: Array<Float>([1.0, 2.0, 3.0]))  should return 6.0.
 */

public struct SumArrayOfNumbers {
    
    func sumArrayOfNumbers<T: Numeric>(numbers: [T]) -> T {
        
        var sum: T = 0
        
        for num in numbers {
            sum += num
        }
        
        return sum
    }
    
    func sumArrayOfNumbers2<T: Number>(numbers: [T]) -> T {
        
        var sum = T()
        
        for num in numbers {
            sum = sum + num
        }
        
        return sum
    }
    
    func sumArrayOfNumbers3<T: Number>(numbers: [T]) -> T {
        
        return numbers.reduce(T(), +)
    }
}
protocol Number {
    init()
    static func +(lhs: Self, rhs: Self) -> Self
}
extension Double: Number {}
extension Float: Number {}
extension Int: Number {}
