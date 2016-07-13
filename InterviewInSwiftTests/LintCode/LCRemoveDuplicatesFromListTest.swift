//
//  LCRemoveDuplicatesFromListTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCRemoveDuplicatesFromListTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // Given 1->1->2, return 1->2.
    // Given 1->1->2->3->3, return 1->2->3.
    func testDeleteDuplicates() {
        let list1 = LCLinkedList.linkedList([1, 1, 2])
        let expectList1 = LCLinkedList.linkedList([1, 2])
        let listResult1 = LCRemoveDuplicatesFromList.deleteDuplicates(list1)
        let list2 = LCLinkedList.linkedList([1, 1, 2, 3, 3])
        let expectList2 = LCLinkedList.linkedList([1, 2, 3])
        let listResult2 = LCRemoveDuplicatesFromList.deleteDuplicates(list2)

        XCTAssertTrue(LCLinkedList.compare(expectList1, node2: listResult1))
        XCTAssertTrue(LCLinkedList.compare(expectList2, node2: listResult2))
    }

}
