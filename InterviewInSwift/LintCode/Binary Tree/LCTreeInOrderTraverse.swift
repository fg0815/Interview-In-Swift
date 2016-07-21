//
//  LCTreeInOrderTraverse.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 10/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Binary Tree Inorder Traversal
// http://www.lintcode.com/en/problem/binary-tree-inorder-traversal/
class LCTreeInOrderTraverse {
    class func enumerateTreeNode(node: LCTreeNode?, result: Int -> Void) {
        if let current = node {
            enumerateTreeNode(current.left, result: result)
            result(current.val)
            enumerateTreeNode(current.right, result: result)
        }
    }
}
