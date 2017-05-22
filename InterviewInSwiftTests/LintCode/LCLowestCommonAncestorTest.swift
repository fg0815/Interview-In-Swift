//
//  LCLowestCommonAncestorTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCLowestCommonAncestorTest: XCTestCase {
    /**
     For the following binary tree:

            4
           / \
          3   7
             / \
            5   6
     LCA(3, 5) = 4

     LCA(5, 6) = 7

     LCA(6, 7) = 7
     */
    func testLowestCommonAncestor() {
        let tree1 = LCTreeNodeHelper.createTreeNode("4,3,7,#,#,5,6")
        if let node3 = LCTreeNodeHelper.treeNode(tree1, value: 3), let node4 = LCTreeNodeHelper.treeNode(tree1, value: 4), let node5 = LCTreeNodeHelper.treeNode(tree1, value: 5), let node6 = LCTreeNodeHelper.treeNode(tree1, value: 6), let node7 = LCTreeNodeHelper.treeNode(tree1, value: 7) {
            XCTAssert(LCLowestCommonAncestor.lowestCommonAncestor(tree1, node1: node3, node2: node5) == node4, "the common of ancestor for 3, 5 is 4")
            XCTAssert(LCLowestCommonAncestor.lowestCommonAncestor(tree1, node1: node5, node2: node6) == node7, "the common of ancestor for 5, 6 is 7")
            XCTAssert(LCLowestCommonAncestor.lowestCommonAncestor(tree1, node1: node6, node2: node7) == node7, "the common of ancestor for 6, 7 is 7")
        }


    }
}
