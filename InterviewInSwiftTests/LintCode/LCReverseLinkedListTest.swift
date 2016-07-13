//
//  LCReverseLinkedListTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCReverseLinkedListTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // For linked list 1->2->3, the reversed linked list is 3->2->1
    func testReverse() {
        let list = LCLinkedList.linkedList([1, 2, 3])
        let expectList = LCLinkedList.linkedList([3, 2, 1])
        let listResult = LCReverseLinkedList.reverse(list)

        XCTAssertTrue(LCLinkedList.compare(expectList, node2: listResult))
    }

}
