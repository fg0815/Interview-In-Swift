//
//  LCTreeNodeHelperTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 3/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCTreeNodeHelperTest: XCTestCase {
    /**
     *
     *       1
     *      / \
     *     2   3
     *    / \
     *   4   5
     */
    func testCreateTreeNode() {
        let node4 = LCTreeNode.init(val: 4)
        let node5 = LCTreeNode.init(val: 5)
        let node2 = LCTreeNode.init(val: 2, left: node4, right: node5)
        let node3 = LCTreeNode.init(val: 3)
        let node1 = LCTreeNode.init(val: 1, left: node2, right: node3)

        let node = LCTreeNodeHelper.createTreeNode("1,2,3,4,5,#,#")

        XCTAssertTrue(LCTreeNodeHelper.compare(node1, node2: node))
    }

}
