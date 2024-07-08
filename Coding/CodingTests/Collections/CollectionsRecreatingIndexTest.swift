//
//  CollectionsRecreatingIndexTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionsRecreatingIndexTest: XCTestCase {

    func test_myIndex() {
        
        XCTAssertEqual([1, 2, 3].myIndex(indexOf: 1), 0)
        XCTAssertEqual([1, 2, 3].myIndex(indexOf: 3), 2)
        XCTAssertEqual([1, 2, 3].myIndex(indexOf: 5), nil)
    }
    
    func test_myIndex2() {
        
        XCTAssertEqual([1, 2, 3].myIndex2(indexOf: 1), 0)
        XCTAssertEqual([1, 2, 3].myIndex2(indexOf: 3), 2)
        XCTAssertEqual([1, 2, 3].myIndex2(indexOf: 5), nil)
    }
}
