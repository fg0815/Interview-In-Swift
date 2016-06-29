//
//  LCDepthTreeTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCDepthTreeTest: XCTestCase {
    /*
     * Given a binary tree as follow:
     *
     *       1
     *      / \
     *     2   3
     *    / \
     *   4   5
     *  The maximum depth is 3.
     */
    func testMaxDepth() {
        let node4 = LCTreeNode.init(val: 4)
        let node5 = LCTreeNode.init(val: 5)
        let node2 = LCTreeNode.init(val: 2, left: node4, right: node5)
        let node3 = LCTreeNode.init(val: 3)
        let node1 = LCTreeNode.init(val: 1, left: node2, right: node3)
        
        // Solution 1
        XCTAssertTrue(LCDepthTree.maxDepth(node1) == 3)
        
        // Solution 2
        let depthTree = LCDepthTree.init()
        XCTAssertTrue(depthTree.maxDepthByTraverse(node1) == 3)
        
        
    }
    
}
