//
//  TraversingTreeTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class TraversingTreeTest: XCTestCase {

    func test_myMap() {
        
        let test1 = [1, 2, 3].myMap { Int($0) }
        XCTAssertEqual(test1, [1, 2, 3].map { Int($0) })
    }

}
