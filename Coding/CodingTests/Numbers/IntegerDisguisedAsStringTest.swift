//
//  IntegerDisguisedAsStringTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 02/07/2024.
//

import XCTest
@testable import Coding

final class IntegerDisguisedAsStringTest: XCTestCase {

    let sut = IntegerDisguisedAsString()
    
    func test_integerDisguisedAsString() {
        
        let actual = sut.integerDisguisedAsString(string: "9223372036854775808")
        XCTAssertTrue(actual)
    }
    
    func test_integerDisguisedAsStringFalse() {
        
        let actual = sut.integerDisguisedAsString(string: "1.01")
        XCTAssertFalse(actual)
    }
    
    func test_integerDisguisedAsStringRegex() {
        
        let actual = sut.isNumeric(string: "9223372036854775808")
        XCTAssertTrue(actual)
    }
    
    func test_integerDisguisedAsString2() {
        
        let actual = sut.integerDisguisedAsString2(string: "9223372036854775808")
        XCTAssertTrue(actual)
    }
}
