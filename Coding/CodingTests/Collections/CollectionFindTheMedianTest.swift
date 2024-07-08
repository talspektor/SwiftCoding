//
//  CollectionFindTheMedianTest.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionFindTheMedianTest: XCTestCase {

    func test_collectionFindTheMedian() {
        
//        XCTAssertEqual([1, 2, 3].collectionFindTheMedian(), 2)
        XCTAssertEqual([1, 2, 3, 4].collectionFindTheMedian(), 2.5)
    }

}
