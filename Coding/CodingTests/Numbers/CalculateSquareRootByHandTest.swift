//
//  CalculateSquareRootByHandTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 02/07/2024.
//

import XCTest
@testable import Coding

final class CalculateSquareRootByHandTest: XCTestCase {

    let sut = CalculateSquareRootByHand()
    
    func test_CalculateSquareRootByHand() {
        
        let actual = sut.accept(input: 0)
        XCTAssertEqual(actual, 0)
    }

    func test_CalculateSquareRootByHand_9_retrun_3() {
        
        let actual = sut.accept(input: 9)
        XCTAssertEqual(actual, 3)
    }
    
    func test_CalculateSquareRootByHand_16777216_retrun_4096() {
        
        let actual = sut.accept(input: 16777216)
        XCTAssertEqual(actual, 4096)
    }
    
    func test_CalculateSquareRootByHand2() {
        
        let actual = sut.accept(input: 0)
        XCTAssertEqual(actual, 0)
    }

    func test_CalculateSquareRootByHand2_9_retrun_3() {
        
        let actual = sut.accept(input: 9)
        XCTAssertEqual(actual, 3)
    }
    
    func test_CalculateSquareRootByHand2_16777216_retrun_4096() {
        
        let actual = sut.accept(input: 16777216)
        XCTAssertEqual(actual, 4096)
    }
    
    func test_CalculateSquareRootByHand3() {
        
        let actual = sut.accept(input: 0)
        XCTAssertEqual(actual, 0)
    }

    func test_CalculateSquareRootByHand3_9_retrun_() {
        
        let actual = sut.accept(input: 9)
        XCTAssertEqual(actual, 3)
    }
    
    func test_CalculateSquareRootByHand3_16777216_retrun_4096() {
        
        let actual = sut.accept(input: 16777216)
        XCTAssertEqual(actual, 4096)
    }
}
