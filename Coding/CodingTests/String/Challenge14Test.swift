//
//  Challenge14Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding


final class Challenge14Test: XCTestCase {
    let sut = Challenge14()
    
    func test() {
        sut.allPermutation(string: "abc")
    }
}
