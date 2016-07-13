//
//  LCTreeLevelTraversalTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 5/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCTreeLevelTraversalTest: XCTestCase {
    /**
     *  Given binary tree {3,9,20,#,#,15,7},
     *
     *       3
     *      / \
     *     9  20
     *       /  \
     *      15   7
     *
     *
     *  return its level order traversal as:
     *
     *  [
     *  [3],
     *  [9,20],
     *  [15,7]
     *  ]
     */
    func testLevelOrderBFS() {
        let treeResult1 = LCTreeLevelTraversal.levelOrder(tree1(), methods: TraversalType.BFS)
        XCTAssertTrue(treeResult1 == expectedTree1())
    }

    func testLevelOrderDFS() {
        let treeResult1 = LCTreeLevelTraversal.levelOrder(tree1(), methods: TraversalType.DFS)
        XCTAssertTrue(treeResult1 == expectedTree1())
    }

    func testLevelOrderBFSWithTwoQueues() {
        let treeResult1 = LCTreeLevelTraversal.levelOrder(tree1(), methods: TraversalType.BFSWithTwoQueues)
        XCTAssertTrue(treeResult1 == expectedTree1())
    }

    func testLevelOrderBFSQueueWithDummyNode() {
        let treeResult1 = LCTreeLevelTraversal.levelOrder(tree1(), methods: TraversalType.BFSQueueWithDummyNode)
        XCTAssertTrue(treeResult1 == expectedTree1())
    }

    func tree1() -> LCTreeNode {
        return LCTreeNodeHelper.createTreeNode("3,9,20,#,#,15,7")
    }

    func expectedTree1() -> [[Int]] {
        return [[3], [9, 20], [15, 7]]
    }
}
