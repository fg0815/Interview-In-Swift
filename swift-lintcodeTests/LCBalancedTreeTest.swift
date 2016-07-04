//
//  LCBalancedTreeTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 30/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCBalancedTreeTest: XCTestCase {
    /** 
     *  Given binary tree A = {3,9,20,#,#,15,7}, B = {3,#,20,15,7}
     *
     *          A)  3            B)    3
     *             / \                  \
     *            9  20                 20
     *              /  \                / \
     *             15   7              15  7
     *
     *  The binary tree A is a height-balanced binary tree, but B is not.
     */
    func testIsBalanced() {
        let testA = LCTreeNodeHelper.createTreeNode("3,9,20,#,#,15,7")
        let testB = LCTreeNodeHelper.createTreeNode("3,#,20,15,7")
        
        XCTAssertTrue(LCBalancedTree.isBalanced(testA))
        XCTAssertFalse(LCBalancedTree.isBalanced(testB))
    }
    
}
