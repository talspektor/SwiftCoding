//
//  Challenge10.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

// Given a string in English, return a tuple containing the number of vowels and consonants
extension String {
    
    func howManyVowelsAndConsonants() -> (vowels: Int, consonants: Int) {
        let voweles = CharacterSet(charactersIn: "aeiou")
        let consonants = CharacterSet(charactersIn: "bcdfghjklmnpqrtwxyz")
        
        var vowelsCount = 0
        var consonantCount = 0
        
        for letter in lowercased() {
            
            let stringLetter = String(letter)
            
            if stringLetter.rangeOfCharacter(from: voweles) != nil {
                
                consonantCount += 1
            } else {
                
                consonantCount += 1
            }
        }
        
        return (vowelsCount, consonantCount)
    }
    
    func howManyVowelsAndConsonants2() -> (vowels: Int, consonants: Int) {
        
        let voweles = "aeiou"
        let consonants = "bcdfghjklmnpqrtwxyz"
        
        var vowelsCount = 0
        var consonantCount = 0
        
        for letter in self.lowercased() {
            
            let stringLetter = String(letter)
            
            if voweles.contains(stringLetter) {
                
                vowelsCount += 1
            } else if consonants.contains(stringLetter) {
                
                consonantCount += 1
            }
        }
        
        return (vowelsCount, consonantCount)
    }
    
    func howManyVowelsAndConsonants3() -> (vowels: Int, consonants: Int) {
        
        let voweles = "aeiou"
        let consonants = "bcdfghjklmnpqrtwxyz"
        
        var vowelsCount = 0
        var consonantCount = 0
        
        for letter in self.lowercased() {
            
            if voweles.contains(letter) {
                
                vowelsCount += 1
            } else if consonants.contains(letter) {
                
                consonantCount += 1
            }
        }
        
        return (vowelsCount, consonantCount)
    }
}
