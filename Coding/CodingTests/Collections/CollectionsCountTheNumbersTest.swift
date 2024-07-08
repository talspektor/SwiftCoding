//
//  CollectionsCountTheNumbersTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionsCountTheNumbersTest: XCTestCase {

    func test_CountTheNumber() {
        
        let actual = [5, 15, 55, 515].countTheNumbers(count: "1")
        XCTAssertEqual(actual, 2)
    }
    
    func test_CountTheNumberReduce() {
        
        let actual = [5, 15, 55, 515].countTheNumberReduce(count: "1")
        XCTAssertEqual(actual, 2)
    }
}
