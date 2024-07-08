//
//  CollectionsLinkedLists.swift
//  CodingTests
//
//  Created by Tal Spektor on 03/07/2024.
//

import XCTest
@testable import Coding

final class CollectionsLinkedLists: XCTestCase {
    
    func test_linkedList() {
        
        let list = LinkedList<Any>.fillListWithAlphbetAndTraverced()
        list?.printNodes()
    }
}
