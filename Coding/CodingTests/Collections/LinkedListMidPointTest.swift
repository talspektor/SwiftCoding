//
//  LinkedListMidPointTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class LinkedListMidPointTest: XCTestCase {

    func test_linkedListMidPoint() {
        
        let list: LinkedList<Int> = LinkedList<Any>.getListOfNumbers(numbers: 1,2,3,4,5)
        
        list.printNodes()
        
        
        
        XCTAssertEqual(list.centerNode?.value, 3)
    }

}
