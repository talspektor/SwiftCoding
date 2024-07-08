//
//  CountLargestRangeTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 06/07/2024.
//

import XCTest
@testable import Coding

final class CountLargestRangeTest: XCTestCase {

    let sut = CountLargestRange()
    
    func test_CountLargestRange() {
        
        let actual = sut.countLargestRange([0, 1, 1, -1, 2, 3, 1])
        XCTAssertEqual(actual, 4...6)
    }

}
