//
//  LCMergeTwoListsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCMergeTwoListsTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // Given 1->3->8->11->15->null, 2->null , return 1->2->3->8->11->15->null.
    func testMergeTwoLists() {
        let list1 = LCLinkedList.linkedList([1, 3, 8, 11, 15])
        let list2 = LCLinkedList.linkedList([2])
        let expectedList = LCLinkedList.linkedList([1, 2, 3, 8, 11, 15])

        let mergedList = LCMergeTwoLists.mergeTwoLists(list1, l2: list2)

        XCTAssertTrue(LCLinkedList.compare(expectedList, node2: mergedList))
    }

}
