//
//  LCAddTwoNumbersTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 10/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCAddTwoNumbersTest: XCTestCase {
    /**
     *   Given 7->1->6 + 5->9->2. That is, 617 + 295.
     *   Return 2->1->9. That is 912.
     *   Given 3->1->5 and 5->9->2, return 8->0->8.
     */
    func testAddTwoNumbers() {
        let test1 = LCAddTwoNumbersTestCaseModel.init(l1: [7, 1 ,6], l2: [5, 9, 2], result: [2, 1 ,9])
        let test2 = LCAddTwoNumbersTestCaseModel.init(l1: [3, 1 ,5], l2: [5, 9, 2], result: [8, 0 ,8])
        
        XCTAssertTrue(LCLinkedList.compare(test1.expectedResult, node2: LCAddTwoNumbers.addTwoNumbers(test1.inputLinkedList1, l2: test1.inputLinkedList2)))
        XCTAssertTrue(LCLinkedList.compare(test2.expectedResult, node2: LCAddTwoNumbers.addTwoNumbers(test2.inputLinkedList1, l2: test2.inputLinkedList2)))
    }
}

class LCAddTwoNumbersTestCaseModel: NSObject {
    var inputLinkedList1: LCLinkedListNode
    var inputLinkedList2: LCLinkedListNode
    var expectedResult: LCLinkedListNode
    
    init(l1: [Int], l2: [Int], result: [Int]) {
        inputLinkedList1 = LCLinkedList.linkedList(l1)
        inputLinkedList2 = LCLinkedList.linkedList(l2)
        expectedResult = LCLinkedList.linkedList(result)
    }
}
