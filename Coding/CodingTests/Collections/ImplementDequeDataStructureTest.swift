//
//  ImplementDequeDataStructureTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 04/07/2024.
//

import XCTest
@testable import Coding

final class ImplementDequeDataStructureTest: XCTestCase {


    func test_Deque() {
        
        var numbers = ImplementDequeDataStructure<Int>()
        
        numbers.pushBack(5)
        numbers.pushBack(8)
        numbers.pushBack(3)
        assert(numbers.count == 3)
        assert(numbers.popFront()! == 5)
        assert(numbers.popBack()! == 3)
        assert(numbers.popFront()! == 8)
        assert(numbers.popBack() == nil)
    }
}
