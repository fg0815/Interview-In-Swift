//
//  LCInsertTreeNode.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 30/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Insert Node in a Binary Search Tree
// http://www.lintcode.com/en/problem/insert-node-in-a-binary-search-tree/

class LCInsertTreeNode: NSObject {
    /**
     * @param root: The root of the binary search tree.
     * @param node: insert this node into the binary search tree
     * @return: The root of the new binary search tree.
     */
    class func insertNode(root: LCTreeNode?, node: LCTreeNode) -> LCTreeNode? {
        if let currentNode = root {
            if currentNode.val > node.val {
                currentNode.left = LCInsertTreeNode.insertNode(currentNode.left, node: node)
            } else {
                currentNode.right = LCInsertTreeNode.insertNode(currentNode.right, node: node)
            }
            return currentNode
        } else {
            return nil
        }

    }
}
