//
//  Challenge6.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

// Remove duplicate letters from a string

extension String {
    
    func challenge6() -> String {
        let arr = Array(self)
        var string = ""
        
        arr.forEach { char in
            if !string.contains(char) {
                string = string + String(char)
            }
        }
        
        return string
    }
    
    func challenge6Array() -> String {
        
        var used = [Character]()
        
        forEach { letter in
            if !used.contains(letter) {
                used.append(letter)
            }
        }
        return String(used)
    }
    
    // Ugly
    func challenge6Set() -> String {
        let array = map { String($0) }
        let set = NSOrderedSet(array: array)
        let letters = Array(set) as! Array<String>
        return letters.joined()
    }
    
    func challenge6WithFilter() -> String {
        return ""
    }
    
    
    // Slower
    func challenge6Dict() -> String {
        
        var used = [Character: Bool]()
        
        let result = filter {
            used.updateValue(true, forKey: $0) == nil
        }
        
        return String(result)
    }
}
