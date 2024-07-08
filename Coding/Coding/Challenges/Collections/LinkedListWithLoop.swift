//
//  LinkedListWithLoop.swift
//  Coding
//
//  Created by Tal Spektor on 07/07/2024.
//

import Foundation
/*
 Challenge 53: Linked lists with a loop
 Difficulty: Taxing
 Someone used the linked list you made previously, but they accidentally made one of the items link back to an earlier part of the list. As a result, the list can’t be traversed properly because it loops infinitely.
 Your job is to write a function that accepts your linked list as its parameter, and returns the node at the start of the loop, i.e. the one that is linked back to.
 Sample input and output
 You can simulate a looped link list with this code:
 var list = LinkedList<UInt32>()
 var previousNode: LinkedListNode<UInt32>? = nil
 var linkBackNode: LinkedListNode<UInt32>? = nil
 var linkBackPoint = Int(arc4random_uniform(1000))
 for i in 1...1000 {
    let node = LinkedListNode(value: arc4random())
    if i == linkBackPoint { linkBackNode = node }
    if let predecessor = previousNode {
       predecessor.next = node
    } else {
       list.start = node
 }
    previousNode = node
 }
 previousNode?.next = linkBackNode

 You will need to use whatever LinkedList and LinkedListNode structures you created in the previous challenge.
 When your code has finished, your findLoopStart() should return the same node contained in the linkBackNode variable.
 */

extension LinkedList {
    
    func findLoopStart() -> LinkedListNode<T>? {
        
        var slow = start
        var fast = start
        
        // go through the list until we find the end
        while fast != nil && fast?.next != nil {
            
            // slow moves one space, fast moves two
            slow = slow?.next
            fast = fast?.next?.next
            // if the two met it means we found a loop, so exit the loop
            if slow == fast {
                break
            }
        }
        // if fast or its successor is nil it means we made it to the end of the list, so there's no loop
        guard fast != nil || fast?.next != nil else {
            return nil
        }
        // if we're still here, we know for sure there's a loop
        slow = start
        // loop through until we find another match
        while slow! !== fast! {
            // move slow and fast the same speed now
            slow = slow?.next
            fast = fast?.next
        }
        // slow and fast now point to the same now, so return either one of them
        return slow
    }
}
