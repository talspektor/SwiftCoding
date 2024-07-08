//
//  CollectionsLinkedLists.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 43: Linked lists
 Difficulty: Easy Create a linked list of lowercase English alphabet letters, along with a method that traverses all
 nodes and prints their letters on a single line separated by spaces.
 Tip #1: This is several problems in one. First, create a linked list data structure, which itself is really two things. Second, use your linked list to create the alphabet. Third, write a method traverses all nodes and prints their letters.
 Tip #2: You should use a class for this. Yes, really. Tip #3: Once you complete your solution, keep a copy of the code – you’ll need it for future
 challenges!
 Sample input and output
 • The output of your code should be the English alphabet printed to the screen, i.e. “a b c d ... x y z”.
 */

class LinkedListNode<T>: Hashable {
    
    var hashValue: Int
    var next: LinkedListNode?
    var value: T
    
    init(value: T , hashValue: Int) {
        self.value = value
        self.hashValue = hashValue
    }
    
    static func == (lhs: LinkedListNode, rhs: LinkedListNode) -> Bool {
        
        return lhs.hashValue == rhs.hashValue
    }
}

class LinkedList<T> {
    
    private var uniqueHashValue = 0
    var start: LinkedListNode<T>?
    
    func getUniqueHashValue() -> Int {
        
        uniqueHashValue += 1
        
        return uniqueHashValue
    }
    
    func printNodes() {
        
        var currentNode = start
        
        while let node = currentNode {
            
            print(node.value, terminator:  " ")
            currentNode = node.next
        }
    }
    
    static func fillListWithAlphbetAndTraverced() -> LinkedList<Character>? {
        let list = LinkedList<Character>()
        var previousNode: LinkedListNode<Character>? = nil
        
        for letter in "abcdefghijklmnopqrstuvwxyz" {
            
            let node = LinkedListNode(value: letter, hashValue: 0)
            
            if let predecessor = previousNode {
                
                predecessor.next = node
            } else {
                
                list.start = node
            }
            
            previousNode = node
        }
        return list
    }
}
