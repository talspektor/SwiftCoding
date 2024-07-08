//
//  NumbersChallenge20Test.swift
//  CodingTests
//
//  Created by Tal Spektor on 01/07/2024.
//

import XCTest
@testable import Coding

final class NumbersChallenge20Test: XCTestCase {

    let sut = NumbersChallenge20()
    
    func test_isPrimeNumber1() {
        
        let actual = sut.isPrimeNumber(1)
        
        XCTAssertFalse(actual)
    }
    
    func test_isPrimeNumber0() {
        
        let actual = sut.isPrimeNumber(0)
        
        XCTAssertFalse(actual)
    }
    
    func test_isPrimeNumber4() {
        
        let actual = sut.isPrimeNumber(4)
        
        XCTAssertFalse(actual)
    }

    func test_isPrimeNumber9() {
        
        let actual = sut.isPrimeNumber(9)
        
        XCTAssertFalse(actual)
    }
    
    func test_isPrimeNumber11() {
        
        let actual = sut.isPrimeNumber(11)
        
        XCTAssertTrue(actual)
    }
    
    func test_isPrimeNumber13() {
        
        let actual = sut.isPrimeNumber(13)
        
        XCTAssertTrue(actual)
    }
    
    func test_isPrimeNumber16777259() {
        
        let actual = sut.isPrimeNumber(16777259)
        
        XCTAssertTrue(actual)
    }
}
