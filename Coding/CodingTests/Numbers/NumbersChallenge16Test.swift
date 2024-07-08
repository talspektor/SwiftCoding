//
//  NumbersChallenge1Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge16Test: XCTestCase {

    let sut = NumbersChallenge16()
    
    func test_fizBuz() {
        sut.fizBuz(start: 1, end: 100)
    }
    
    func test_fizBuz2() {
        sut.fizBuz2(start: 1, end: 100)
    }

}
