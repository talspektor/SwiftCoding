//
//  NumbersChallenge18Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge18Test: XCTestCase {

    let sut = NumbersChallenge18()
    
    func test_myPow() {
        let actual = sut.myPow(first: 2, second: 3)
        let expected = 8
        
        XCTAssertEqual(actual, expected)
    }

    func test_myPow2() {
        let actual = sut.myPow2(number: 2, power: 3)
        let expected = 8
        
        XCTAssertEqual(actual, expected)
    }
}
