//
//  SumArrayOfNumbersTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 07/07/2024.
//

import XCTest
@testable import Coding

final class SumArrayOfNumbersTest: XCTestCase {

    let sut = SumArrayOfNumbers()
    
    func test_SumArrayOfNumbers() {
        
        let actual = sut.sumArrayOfNumbers(numbers: [1, 2, 3])
        
        XCTAssert(actual == 6)
        XCTAssertEqual(sut.sumArrayOfNumbers(numbers: [1.0, 2.0, 3.0]), 6.0)
        XCTAssertEqual(sut.sumArrayOfNumbers(numbers: Array<Float>([1.0, 2.0, 3.0])), 6.0)
    }
    
    func test_SumArrayOfNumbers2() {
        
        let actual = sut.sumArrayOfNumbers2(numbers: [1, 2, 3])
        
        XCTAssert(actual == 6)
        XCTAssertEqual(sut.sumArrayOfNumbers2(numbers: [1.0, 2.0, 3.0]), 6.0)
        XCTAssertEqual(sut.sumArrayOfNumbers2(numbers: Array<Float>([1.0, 2.0, 3.0])), 6.0)
    }
}
