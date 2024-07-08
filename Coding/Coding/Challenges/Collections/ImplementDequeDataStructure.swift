//
//  ImplementDequeDataStructure.swift
//  Coding
//
//  Created by Tal Spektor on 04/07/2024.
//

import Foundation
/*
 Challenge 48: Implement a deque data structure
 Difficulty: Tricky
 Create a new data type that models a double-ended queue using generics, or deque. You should be able to push items to the front or back, pop them from the front or back, and get the number of items.
 Tip: It’s pronounced like “deck”. Sample input and output
 Once your data structure has been created, this code should compile and run cleanly:
 var numbers = deque<Int>()
 numbers.pushBack(5)
 numbers.pushBack(8)
 numbers.pushBack(3)
 assert(numbers.count == 3)
 assert(numbers.popFront()! == 5)
 assert(numbers.popBack()! == 3)
 assert(numbers.popFront()! == 8)
 assert(numbers.popBack() == nil)
 */

public struct ImplementDequeDataStructure<T> {
    
    var array = [T]()
    
    var count: Int {
        return array.count
    }
    
    mutating func pushBack(_ obj: T) {
        array.append(obj)
    }
    
    mutating func pushFront(_ obj: T) {
        array.insert(obj, at: 0)
    }
    
    mutating func popBack() -> T? {
        return array.popLast()
    }
    
    mutating func popFront() -> T? {
        if array.isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
}
