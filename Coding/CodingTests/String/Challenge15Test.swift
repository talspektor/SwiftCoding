//
//  Challenge15Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class Challenge15Test: XCTestCase {
    
    let sut = Challenge15()

    func test_reverceWords() {
        
        let actual = sut.reverceWords(input: "Swift Coding Challenges")
        let expected = "tfiwS gnidoC segnellahC"
        XCTAssertEqual(actual, expected)
    }

}
