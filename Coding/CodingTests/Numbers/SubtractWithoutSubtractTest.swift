//
//  SubtractWithoutSubtractTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class SubtractWithoutSubtractTest: XCTestCase {

    let sut = SubtractWithoutSubtract()
    
    func test_SubtractWithoutSubtract() {
        
        let actual = sut.accept(subtract: 0, from: 0)
        XCTAssertEqual(actual, 0)
    }

    func test_SubtractWithoutSubtract_5_9() {
        
        let actual = sut.accept(subtract: 5, from: 9)
        XCTAssertEqual(actual, 4)
    }
    
    func test_SubtractWithoutSubtract_10_30() {
        
        let actual = sut.accept(subtract: 10, from: 30)
        XCTAssertEqual(actual, 20)
    }
    
    func test_SubtractWithoutSubtract3_5_9() {
        
        let actual = sut.accept(subtract: 5, from: 9)
        XCTAssertEqual(actual, 4)
    }
    
    func test_SubtractWithoutSubtract3_10_30() {
        
        let actual = sut.accept(subtract: 10, from: 30)
        XCTAssertEqual(actual, 20)
    }
}
