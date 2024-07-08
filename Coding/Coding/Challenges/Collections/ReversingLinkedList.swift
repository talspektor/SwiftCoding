//
//  ReversingLinkedList.swift
//  Coding
//
//  Created by Tal Spektor on 06/07/2024.
//

import Foundation
/*
 Challenge 51: Reversing linked lists
 Difficulty: Tricky Expand your code from challenge 43 so that it has a reversed() method that returns a copy
 of itself in reverse.
 Tip: Don’t cheat! It is not a solution to this problem just to reverse the alphabet letters before you create your linked list. Create the linked list alphabetically, then write code to reverse it.
 Sample input and output
 • When you call reversed() on your alphabet list, running printNodes() on the return value should print the English alphabet printed to the screen in reverse, i.e. “z y x ... d b c a”. 
 */

extension LinkedList {
    
    func reversed() -> LinkedList<T> {
        
        // create our copy for the return value
        let copy = LinkedList<T>()
        
        // if we have nodes to copy
        if let startNode = start {
            
            // copy the original start node
            var previousCopyNode = LinkedListNode(value: startNode.value, hashValue: 0)
            
            // now start coping from the nest node
            var currentNode = start?.next
            
            while let node = currentNode {
                
                // create a copy of this node
                let copyNode = LinkedListNode(value: node.value, hashValue: 0)
                
                // make it point to the node we created previously
                copyNode.next = previousCopyNode
                
                // then make it the previous node, so we can move forward
                previousCopyNode = copyNode
                currentNode = currentNode?.next
            }
            
            // we're as the end of the list, which is our new start
            copy.start = previousCopyNode
        }
        
        return copy
    }
    
    func copy() -> LinkedList<T> {
        
        let copy = LinkedList<T>()
        
        if let startNode = start {
            
            copy.start = LinkedListNode(value: startNode.value, hashValue: 0)
            var previousNode = copy.start
            var currentNode = start?.next
            
            while let node = currentNode {
                let copyNode = LinkedListNode(value: node.value, hashValue: 0)
                previousNode?.next = copyNode
                previousNode = copyNode
                currentNode = currentNode?.next
            }
        }
        return copy
    }
    
    func reverse() {
        
        var currentNode = start
        var newNext: LinkedListNode<T>? = nil
        
        while let node = currentNode {
            let next = node.next
            node.next = newNext
            newNext = node
            currentNode = next
        }
        start = newNext
    }
    
    func reversed2() -> LinkedList<T> {
        let copy = self.copy()
        copy.reverse()
        return copy
    }
}
