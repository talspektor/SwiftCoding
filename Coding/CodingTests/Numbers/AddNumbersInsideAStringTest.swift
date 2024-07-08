//
//  AddNumbersInsideAStringTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 02/07/2024.
//

import XCTest
@testable import Coding

final class AddNumbersInsideAStringTest: XCTestCase {

    let sut = AddNumbersInsideAString()

    func test_addNumbersInsideAString() {
        
        let actual = sut.addNumbersInsideAString(string: "")
        XCTAssertEqual(actual, 0)
    }
    
    func test_addNumbersInsideAString_a1b2c3_shouldreturn_6() {
        
        let actual = sut.addNumbersInsideAString(string: "a1b2c3")
        XCTAssertEqual(actual, 6)
    }
    
    func test_addNumbersInsideAString2_h8ers_shouldreturn_8() {
        
        let actual = sut.addNumbersInsideAString2(string: "h8ers")
        XCTAssertEqual(actual, 8)
    }
    
    
}
