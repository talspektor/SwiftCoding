//
//  NumbersChallenge19Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge19Test: XCTestCase {

    let sut = NumbersChallenge19()
    
    func test_swapNunbers() {
        
        let actual = sut.swapNumbers(a: 2, b: 3)
        let expeted = (a: 3, b: 2)
        
        XCTAssertEqual(actual.a, expeted.a)
        XCTAssertEqual(actual.b, expeted.b)
    }
    
    func test_swapNumbers2() {
        var a = 2
        var b = 3
        sut.swapNumbers2(a: &a, b: &b)
        let expectedA = 3
        let expectedB = 2
        
        XCTAssertEqual(a, expectedA)
        XCTAssertEqual(b, expectedB)
    }

}
