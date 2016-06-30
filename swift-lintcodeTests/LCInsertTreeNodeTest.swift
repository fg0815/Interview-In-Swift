//
//  LCInsertTreeNodeTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 30/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCInsertTreeNodeTest: XCTestCase {

    /** Given binary search tree as follow, after Insert node 6, the tree should be:
     *
     *       2             2
     *      / \           / \
     *     1   4   -->   1   4
     *    /             / \
     *   3             3   6
     */
    func testInsertNode() {
        let newNode = LCTreeNode.init(val: 6)
        let treeResult1 = LCInsertTreeNode.insertNode(tree1(), node: newNode)
        XCTAssertTrue(LCTreeNodeHelper.compare(treeResult1, node2: expectedTree1()))
    }
}

extension LCInsertTreeNodeTest {
    func tree1() -> LCTreeNode {
        let node3 = LCTreeNode.init(val: 3)
        let node1 = LCTreeNode.init(val: 1, left: node3, right: nil)
        let node4 = LCTreeNode.init(val: 4)
        let node2 = LCTreeNode.init(val: 2, left: node1, right: node4)
        
        return node2
    }
    
    func expectedTree1() -> LCTreeNode {
        let node3 = LCTreeNode.init(val: 3)
        let node6 = LCTreeNode.init(val: 6)
        let node1 = LCTreeNode.init(val: 1, left: node3, right: node6)
        let node4 = LCTreeNode.init(val: 4)
        let node2 = LCTreeNode.init(val: 2, left: node1, right: node4)
        
        return node2
    }
}
