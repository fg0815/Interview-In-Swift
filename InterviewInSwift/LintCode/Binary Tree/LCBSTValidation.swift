//
//  LCBSTValidation.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 4/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//


// Validate Binary Search Tree
// http://www.lintcode.com/en/problem/validate-binary-search-tree/

class LCBSTValidation {
    fileprivate var lastVal = Int.min
    fileprivate var firstNode = true

    func isValidBST(_ root: LCTreeNode?) -> Bool {
        if let node = root {
            if !isValidBST(node.left) {
                return false
            }

            if !firstNode && lastVal >= node.val {
                return false
            }

            firstNode = false
            lastVal = node.val
            if (!isValidBST(node.right)) {
                return false
            }
        }

        return true
    }
}
