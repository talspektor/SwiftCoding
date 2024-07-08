//
//  BubbleSortTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 07/07/2024.
//

import XCTest
@testable import Coding

final class BubbleSortTest: XCTestCase {

    func test_bubbleSort() {
        
        XCTAssertEqual([12, 5, 4, 9, 3, 2, 1].bubbleSort(), [1, 2, 3, 4, 5, 9, 12])
        XCTAssertEqual([12, 5, 4, 9, 3, 2, 1].bubbleSort2(), [1, 2, 3, 4, 5, 9, 12])
    }

}
