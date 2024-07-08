//
//  BinarySearchTrees.swift
//  Coding
//
//  Created by Tal Spektor on 07/07/2024.
//

import Foundation
/*
 Challenge 54: Binary search trees
 Difficulty: Taxing Create a binary search tree data structure that can be initialized from an unordered array of
 comparable values, then write a method that returns whether the tree is balanced.
 Tip #1: There is more than one description of a balanced binary tree. For the purpose of this challenge, a binary tree is considered balanced when the height of both subtrees for every node differs by no more than 1.
 Tip #2: Once you complete this challenge, keep your code around because you’ll need it in the next one.
 Sample input and output
 The following values should create balanced trees:
     •    [2, 1, 3]  
     •    [5, 1, 7, 6, 2, 1, 9]  
     •    [5, 1, 7, 6, 2, 1, 9, 1]  
     •    [5, 1, 7, 6, 2, 1, 9, 1, 3]  
     •    [50, 25, 100, 26, 101, 24, 99]  
     •    ["k", "t", "d", "a", "z", "m", "f"]  
     •    [1]  
     •    [Character]()  The following values should not create balanced trees:  
     •    [1, 2, 3, 4, 5]  
     •    [10, 5, 4, 3, 2, 1, 11, 12, 13, 14, 15]  
     •    ["f", "d", "c", "e", "a", "b"]
 */

public class Node<T> {
    
    var key: T
    var left: Node<T>?
    var right: Node<T>?
    
    init(key: T) {
        self.key = key
    }
}

class BinarySearchTree<T: Comparable>: CustomStringConvertible {
    
    var root: Node<T>?
    
    init(array: [T]) {
        
        for item in array {
            
            // this will obe set to true when we've created a node from this item
            var placed = false
            
            if let rootNode = root {
                
                // we have a root node, so make it out tracker
                var tracker = rootNode
                
                while placed == false {
                    
                    // if we're  placing an item that comes before out tracker
                    if item <= tracker.key {
                        
                        // if we dont already have a left node
                        if tracker.left == nil {
                            
                            // make this item out left node
                            tracker.left = Node(key: item)
                            
                            // mark it as placed
                            placed = true
                        }
                        
                        // we already have a left node; make that the tracker so we can compare against it
                        tracker = tracker.left!
                    } else {
                        
                        // this item is greater then our tracker. so it needs to sit on its right
                        // if we dont already have a right node
                        if tracker.right == nil {
                            
                            // make this item our right node
                            tracker.right = Node(key: item)
                        }
                        // we already have a right node, make that the tracker so we can compare against it
                        tracker = tracker.right!
                    }
                }
            } else {
                root = Node(key: item)
            }
        }
    }
    
    var description: String {
        guard let first = root else { return "(Empty)" }
        var queue = [Node<T>]()
        var output = ""
        
        while queue.count > 0 {
            
            var nodesAtCurrentLevel = queue.count
            
            while nodesAtCurrentLevel > 0 {
                
                let node = queue.removeFirst()
                output += "\(node.key) "
                
                if node.left != nil { queue.append(node.left!) }
                if node.right != nil { queue.append(node.right!) }
                nodesAtCurrentLevel -= 1
            }
            output += "\n"
        }
        return output
    }
    
    func isBalanced() -> Bool {
        func minDepth(from node: Node<T>?) -> Int {
            guard let node = node else { return 0 }
            let returnValue = 1 + min(minDepth(from: node.left), minDepth(from: node.right))
            print("Got min depth \(returnValue) for \(node.key)")
            return returnValue
        }
        func maxDepth(from node: Node<T>?) -> Int {
            guard let node = node else { return 0 }
            let returnValue = 1 + max(maxDepth(from: node.left), maxDepth(from: node.right))
            print("Got max depth \(returnValue) for \(node.key)")
            return returnValue
        }
        guard let root = root else { return true }
        let difference = maxDepth(from: root) - minDepth(from: root)
        return difference <= 1
    }
}
