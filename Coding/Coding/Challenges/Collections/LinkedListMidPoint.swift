//
//  LinkedListMidPoint.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 44: Linked list mid-point
 Difficulty: Easy Extend your linked list class with a new method that returns the node at the mid point of the
 linked list using no more than one loop.
 Tip: If the linked list contains an even number of items, returning the one before or the one after the center is acceptable.
 Sample input and output
     •    If the linked list contains 1, 2, 3, 4, 5, your method should return 3.  
     •    If the linked list contains 1, 2, 3, 4, your method may return 2 or 3.  
     •    If the linked list contains the English alphabet, your method may return M or N.
 */
extension LinkedList {
    
    var centerNode: LinkedListNode<T>? {
        
        var slow = start
        var fast = start
        
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
    
    static func getListOfNumbers(numbers: Int...) -> LinkedList<Int> {
        
        let list = LinkedList<Int>()
        list.start = LinkedListNode(value: 0, hashValue: 0)
        var previousNode: LinkedListNode<Int>? = nil
        
        for number in numbers {
            
            let node = LinkedListNode(value: number, hashValue: 0)
            
            if previousNode != nil {
                
                previousNode?.next = node
            } else {
                
                list.start = node
            }
            
            previousNode = node
        }
        
        return list
    }
}
