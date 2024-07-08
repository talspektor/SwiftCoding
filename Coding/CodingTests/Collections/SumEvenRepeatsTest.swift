//
//  SumEvenRepeatsTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 04/07/2024.
//

import XCTest
@testable import Coding

final class SumEvenRepeatsTest: XCTestCase {


    let sut = SumEvenRepeats()
    
    func test_SumEvenRepeats() {
        assert(sut.sumEvenRepeats(1, 2, 2, 3, 3, 4) == 5)
        assert(sut.sumEvenRepeats(5, 5, 5, 12, 12) == 12)
        assert(sut.sumEvenRepeats(1, 1, 2, 2, 3, 3, 4, 4) == 10)
    }
}
