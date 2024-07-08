//
//  IntegerDisguisedAsString.swift
//  Coding
//
//  Created by Tal Spektor on 02/07/2024.
//

import Foundation
/*
 Challenge 23: Integer disguised as string
 Difficulty: Tricky Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits
 0 through 9.
 Sample input and output
     •    The input “01010101” should return true.  
     •    The input “123456789” should return true.  
     •    The letter “9223372036854775808” should return true.  
     •    The letter “1.01” should return false; “.” is not a number.
 */

public struct IntegerDisguisedAsString {
    
    func integerDisguisedAsString(string: String) -> Bool {
        
        return string.rangeOfCharacter(from: CharacterSet.decimalDigits.inverted) == nil
    }
    
    func integerDisguisedAsString2(string: String) -> Bool {
        
        let numbers = CharacterSet.decimalDigits
        
        return string.rangeOfCharacter(from: CharacterSet(charactersIn: "0123456789").inverted) == nil
    }
    
    func isNumeric(string: String) -> Bool {
        let numericRegEx = "^[0-9]+$"
        let test = NSPredicate(format:"SELF MATCHES %@", numericRegEx)
        return test.evaluate(with: string)
    }
}
