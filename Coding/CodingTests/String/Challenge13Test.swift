//
//  Challenge13Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 30/06/2024.
//

import XCTest
import Coding

final class Challenge13Test: XCTestCase {

    func test_onlyLowercase() {
        let actual = "aabbcc".repeatCharCount2()
        let expected = "a2b2c2"
        XCTAssertEqual(actual, expected)
    }
    
    func test_repeatCharCount() {
        let actual = "aaAAaa".repeatCharCount2()
        let expected = "a2A2a2"
        XCTAssertEqual(actual, expected)
    }

}
