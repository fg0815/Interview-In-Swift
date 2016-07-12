//
//  LCRemoveNodeFromListTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCRemoveNodeFromListTest: XCTestCase {
    
    // 1->2->3->4->5->null, 2
    var node1: LCLinkedListNode!
    //1->2->3->5->null
    var node1Result: LCLinkedListNode!
    
    override func setUp() {
        super.setUp()
        
        node1 = LCLinkedList.linkedList([1, 2, 3, 4, 5])
        node1Result = LCLinkedList.linkedList([1, 2, 3, 5])
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRemoveNthFromEnd() {
        let node1AfterRemoved = LCRemoveNodeFromList.removeNthFromEnd(node1, n: 2)
        XCTAssertTrue(LCLinkedList.compare(node1AfterRemoved!, node2: node1Result))
    }
    
}
