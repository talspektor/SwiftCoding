//
//  CollectionMissingNumberInArrayTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionMissingNumberInArrayTest: XCTestCase {
    
    let sut = CollectionMissingNumberInArray()

    func test_missingNumbersInArrat() {
        
        var testArray = Array(1...100)
        
        testArray.remove(at: 25)
        testArray.remove(at: 20)
        testArray.remove(at: 6)
        
        XCTAssertEqual(sut.missingNumbersInArray(input: testArray), [7, 21, 26])
    }
    
    func test_missingNumbersInArratSet() {
        
        var testArray = Array(1...100)
        
        testArray.remove(at: 25)
        testArray.remove(at: 20)
        testArray.remove(at: 6)
        
        XCTAssertEqual(sut.missingNumbersInArraySet(input: testArray), [7, 21, 26])
    }
    
    func test_missingNumbersInArratSet2() {
        
        var testArray = Array(1...100)
        
        testArray.remove(at: 25)
        testArray.remove(at: 20)
        testArray.remove(at: 6)
        
        XCTAssertEqual(sut.missingNumbersInArraySet2(input: testArray), [7, 21, 26])
    }

}
