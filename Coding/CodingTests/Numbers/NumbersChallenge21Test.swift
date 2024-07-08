//
//  NumbersChallenge21Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge21Test: XCTestCase {

    let sut = NumbersChallenge21()
    
    func test_countingBinaryOnes() {
        
        let actual = sut.countingBinaryOnes(number: 12)
        let expected:(highest: Int?, lowest: Int?) = (highest: 17, lowest: 10)
        
        XCTAssertEqual(actual.highest, expected.highest)
        XCTAssertEqual(actual.lowest, expected.lowest)
    }

    func test_countingBinaryOnes2() {
        
        let actual = sut.countingBinaryOnes2(number: 12)
        let expected:(highest: Int?, lowest: Int?) = (highest: 17, lowest: 10)
        
        XCTAssertEqual(actual.nextHighest, expected.highest)
        XCTAssertEqual(actual.nextLowest, expected.lowest)
    }
}
