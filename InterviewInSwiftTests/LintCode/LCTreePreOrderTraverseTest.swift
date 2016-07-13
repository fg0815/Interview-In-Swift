//
//  LCTreePreOrderTraverseTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 4/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCTreePreOrderTraverseTest: XCTestCase {
    /**
     *   Given:
     *
     *       1
     *      / \
     *     2   3
     *    / \
     *   4   5
     *
     *   return [1,2,4,5,3].
     */
    func testEnumerateTreeNode() {
        let test1 = "1,2,3,4,5,#,#"
        let expectedTest1 = [1, 2, 4, 5, 3]
        let node1 = LCTreeNodeHelper.createTreeNode(test1)
        var index = 0

        LCTreePreOrderTraverse.enumerateTreeNode(node1) { (currentValue) in
            XCTAssertTrue(currentValue == expectedTest1[index])
            index += 1
        }

    }
}
