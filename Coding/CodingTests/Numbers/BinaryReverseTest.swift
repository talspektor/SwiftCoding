//
//  BInaryReverseTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 02/07/2024.
//

import XCTest
@testable import Coding

final class BinaryReverseTest: XCTestCase {

    let sut = BinaryReverse()
    
    func test_binaryReverse() {
        
        let actual = sut.accept(number: 41)
        let expected: UInt = 148
        
        XCTAssertEqual(actual, expected)
    }

}
