//
//  Challenge9.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

// Find pangrams

extension String {
    
    func isPangram() -> Bool {
        
        let set = Set(lowercased())
        let letters = set.filter { $0 >= "a" && $0 <= "z" }
        
        return letters.count == 26
    }
}
