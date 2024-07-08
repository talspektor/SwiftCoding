//
//  NumbersChallenge17Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge17Test: XCTestCase {

    let sut = NumbersChallenge17()
    
    func test_randomBetween() {
        let actual = sut.randonBetween(min: 1, max: 3)
        
        print(actual)
        XCTAssert(actual >= 1 && actual <= 100)
    }
}
