//
//  LCTreeInOrderTraverseTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 10/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCTreeInOrderTraverseTest: XCTestCase {
    /**
     *   Given:
     *
     *       1
     *      / \
     *     2   3
     *    / \
     *   4   5
     *
     *   return [4,2,5,1,3].
     */
    func testEnumerateTreeNode() {
        let test1 = "1,2,3,4,5,#,#"
        let expectedTest1 = [4, 2,5, 1,3]
        let node1 = LCTreeNodeHelper.createTreeNode(test1)
        var index = 0

        LCTreeInOrderTraverse.enumerateTreeNode(node1) { (currentValue) in
            XCTAssertTrue(currentValue == expectedTest1[index])
            index += 1
        }

    }
}
