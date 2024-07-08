//
//  Challenge12Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 30/06/2024.
//

import Foundation
import XCTest
import Coding

class Challenge12Test: XCTestCase {
    
    func test_findLongestPrefix_emptyString_returnEmptyString() {
        let actual = "".findLongestPrefix()
        let expect = ""
        XCTAssertEqual(actual, expect)
    }
    
    func test_findLongestPrefix_swi() {
        let actual = "swift switch swill swim".findLongestPrefix()
        let expect = "swi"
        XCTAssertEqual(actual, expect)
    }
    
    func test_findLongestPrefix_fl() {
        let actual = "flip flap flop".findLongestPrefix()
        let expect = "fl"
        XCTAssertEqual(actual, expect)
    }
}
