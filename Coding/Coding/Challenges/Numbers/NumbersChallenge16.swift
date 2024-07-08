//
//  NumbersChallenge1.swift
//  Coding
//
//  Created by Tal Spektor on 01/07/2024.
//

import Foundation

/*
 Challenge 16: Fizz Buzz
 Difficulty: Easy
 Write a function that counts from 1 through 100, and prints “Fizz” if the counter is evenly divisible by 3, “Buzz” if it’s evenly divisible by 5, “Fizz Buzz” if it’s even divisible by three and five, or the counter number for all other cases.
 Sample input and output
     •    1 should print “1”  
     •    2 should print “2”  
     •    3 should print “Fizz”  
     •    4 should print “4”  
     •    5 should print “Buzz”  
     •    15 should print “Fizz Buzz”
 */

public struct NumbersChallenge16 {
    
    func fizBuz(start: Int, end: Int) {
        
        for i in start...end {
            if i % 5 == 0 {
                if i % 3 == 0 {
                    print("Fiz Buz")
                } else {
                    print("Buz")
                }
            } else if i % 3 == 0 {
                print("Fiz")
            } else {
                print(i)
            }
        }
    }
    
    func fizBuz2(start: Int, end: Int) {
        (start...end).forEach {
            print($0 % 3 == 0 ? $0 % 5 == 0 ? "Fizz Buzz" : "Fizz" : $0 & 5 == 0 ? "Buzz" : "\($0)")
        }
    }
}
