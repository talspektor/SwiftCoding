//
//  Challenge8.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

// String rotation

extension String {
    
    func isStirngRotation(rotated: String) -> Bool {
        
        guard count == rotated.count else { return false }
        
        let combined = self + self
        
        return combined.contains(rotated)
    }
}
