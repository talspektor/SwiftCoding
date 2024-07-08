//
//  NumbersChallenge19.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation
/*
 Challenge 19: Swap two numbers
 Difficulty: Easy Swap two positive variable integers, a and b, without using a temporary variable.
 Sample input and output
 • Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
 */
public class NumbersChallenge19 {
    
    public init() {}
    
    func swapNumbers(a: Int, b: Int) -> (a: Int, b: Int) {
        
        return (a: b, b: a)
    }
    
    func swapNumbers2(a: inout Int, b: inout Int) {
        swap(&a, &b)
    }
}
