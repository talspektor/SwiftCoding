//
//  RecreateMinTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class RecreateMinTest: XCTestCase {

    
    func test_myMin() {
        
        let min = [1, 2, 3].myMin()
        XCTAssertEqual(min, 1)
        let min1 = ["q", "f", "k"].myMin()
        XCTAssertEqual(min1, "f")
    }

}
