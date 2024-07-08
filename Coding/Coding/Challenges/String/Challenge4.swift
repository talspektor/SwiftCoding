//
//  Challenge4.swift
//  Coding
//
//  Created by Tal Spektor on 29/06/2024.
//

import Foundation

extension String {
    /*
     Sample input and output
        •    The code "Hello, world".fuzzyContains("Hello") should return true.  
        •    The code "Hello, world".fuzzyContains("WORLD") should return true.  
        •    The code "Hello, world".fuzzyContains("Goodbye") should return
     */
    func fuzzyContains(_ string: String) -> Bool {
        return self.uppercased().ranges(of: string.uppercased()) != nil
    }
    
    func fuzzyContains2(_ string: String) -> Bool {
        return range(of: string, options: .caseInsensitive) != nil
    }
}
