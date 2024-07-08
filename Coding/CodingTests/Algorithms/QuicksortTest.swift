//
//  QuicksortTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 08/07/2024.
//

import XCTest
@testable import Coding

final class QuicksortTest: XCTestCase {

    func test_quicksort() {
        
        XCTAssert([12, 5, 4, 9, 3, 2, 1].quicksort() == [1, 2, 3, 4, 5, 9, 12])
        XCTAssert(["f", "a", "b"].quicksort() == ["a", "b", "f"])
        XCTAssert([String]().quicksort() == [])
    }

    func test_quicksort2() {
        
        XCTAssert([12, 5, 4, 9, 3, 2, 1].quicksort2() == [1, 2, 3, 4, 5, 9, 12])
        XCTAssert(["f", "a", "b"].quicksort2() == ["a", "b", "f"])
        XCTAssert([String]().quicksort2() == [])
    }
}
