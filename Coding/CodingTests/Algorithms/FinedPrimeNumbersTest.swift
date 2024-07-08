//
//  FinedPrimeNumbersTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 08/07/2024.
//

import XCTest
@testable import Coding

final class FinedPrimeNumbersTest: XCTestCase {

    let sut = FindPrimeNumbers()
    
    func test_FindPrimeNumbers() {
        
        let actual = sut.findPromeNumbers(upTo: 10)
        let expected = [2, 3, 5, 7]
        
        XCTAssertEqual(actual, expected)
    }
    
    func test_FindPrimeNumbers2() {
        
        let actual = sut.findPromeNumbers2(upTo: 10)
        let expected = [2, 3, 5, 7]
        
        XCTAssertEqual(actual, expected)
    }
}
