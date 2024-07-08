//
//  TraversingTree.swift
//  Coding
//
//  Created by Tal Spektor on 03/07/2024.
//

import Foundation
/*
 Challenge 45: Traversing the tree
 Difficulty: Easy
 Note: this challenge cannot be attempted until you have first completed challenge 54.
 Write a new method for your binary search tree that traverses the tree in order, running a closure on each node.
 Tip: Traversing a node in order means visiting its left value, then visiting its own value, then visiting its right value.
 Sample input and output
 Assuming a binary tree created from the array [2, 1, 3]:
     •    The code tree.root?.traverse { print($0.key) } should print 1, 2, 3.  
     •    The code var sum = 0; tree.root?.traverse { sum += $0.key };  print(sum) should print 6.  
     •    The code var values = [Int](); tree.root?.traverse  { values.append($0.key) }; print(values.count) should print 3.
 */
