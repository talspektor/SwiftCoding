//
//  Challenge5.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

extension String {
    // MARK: - Challenge 5

    func charCount(count: Character) -> Int {
        
        var result = 0
        
        forEach { char in
            if char == count {
                result += 1
            }
        }

        return result
    }
    
    // Slower
    func charCount2(count: Character) -> Int {
        return reduce(0) {
            $1 == count ? $0 + 1 : $0
        }
    }
    
    // Slower
    func charCount3(count: String) -> Int {
        let array = map { String($0) }
        let counted = NSCountedSet(array: array)
        
        return counted.count(for: count)
    }
    
    func charCount4(count: String) -> Int {
        let modified = replacingOccurrences(of: count, with: "")
        
        return self.count - modified.count
    }
}
