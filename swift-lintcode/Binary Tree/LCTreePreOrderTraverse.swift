//
//  LCTreePreOrderTraverse.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 4/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Binary Tree Preorder Traversal
// http://www.lintcode.com/en/problem/binary-tree-preorder-traversal
class LCTreePreOrderTraverse: NSObject {
    class func enumerateTreeNode(node: LCTreeNode?, result: Int -> Void) {
        if let current = node {
            result(current.val)
            enumerateTreeNode(current.left, result: result)
            enumerateTreeNode(current.right, result: result)
        }
    }
}
