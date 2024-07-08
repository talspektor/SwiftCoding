//
//  SortStringByLengthTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class SortStringByLengthTest: XCTestCase {

    func test_sortStringArrayByLength() {
        
        let actual = ["a", "abc", "ab"].sortStringArrayByLength()
        let expected  = ["abc", "ab", "a"]
        
        XCTAssertEqual(actual, expected)
    }
}
