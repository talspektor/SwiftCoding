//
//  LinkedListWithLoopTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 07/07/2024.
//

import XCTest
@testable import Coding

final class LinkedListWithLoopTest: XCTestCase {

    func test_LinkedListWithLoop() {
        
        var list = LinkedList<UInt32>()
        let node = LinkedListNode(value: arc4random(), hashValue: list.getUniqueHashValue())
    }

}
