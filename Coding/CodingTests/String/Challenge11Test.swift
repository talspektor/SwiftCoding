//
//  Challenge11Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 30/06/2024.
//

import Foundation
import XCTest
import Coding


class Challenge11Test: XCTestCase {
    
    func test_isSimilarTo_emptySting_returnTrue() {
        let actual = "".isSimilarTo(string: "")
        XCTAssertTrue(actual)
    }
    
    func test_isSimilatTo_oneLetterDifferent_returnTrue() {
        let actual = "Clamp".isSimilarTo(string: "Cramp")
        XCTAssertTrue(actual)
    }
    
    func test_isSimilatTo_twoLetterDifferent_returnTrue() {
        let actual = "Clamp".isSimilarTo(string: "Crams")
        XCTAssertTrue(actual)
    }
    
    func test_isSimilatTo_threeLetterDifferent_returnTrue() {
        let actual = "Clamp".isSimilarTo(string: "Grams")
        XCTAssertTrue(actual)
    }
    
    func test_isSimilatTo_fourLetterDifferent_returnFalse() {
        let actual = "Clamp".isSimilarTo(string: "Grans")
        XCTAssertFalse(actual)
    }
    
    func test_isSimilatTo_differentLengths_returnFalse() {
        let actual = "Clamp".isSimilarTo(string: "Clam")
        XCTAssertFalse(actual)
    }
    
    func test_isSimilatTo_differentPosition_returnFalse() {
        let actual = "clamp".isSimilarTo(string: "maple")
        XCTAssertFalse(actual)
    }
}
