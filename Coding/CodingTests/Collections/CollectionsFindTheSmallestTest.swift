//
//  CollectionsFindTheSmallestTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionsFindTheSmallestTest: XCTestCase {

    func test_findTheSmallest() {
        
        let actual = [7, 2, 3, 4].findTheSmallest(count: 3)
        let expected = [2, 3, 4]
        XCTAssertEqual(actual, expected)
    }

    func test_findTheSmallest_string() {
        
        let actual = ["q", "f", "k"].findTheSmallest(count: 10)
        let expected = ["f", "k", "q"]
        XCTAssertEqual(actual, expected)
    }
}
