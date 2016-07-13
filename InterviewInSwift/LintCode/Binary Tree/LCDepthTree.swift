//
//  LCDepthTree.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Maximum Depth of Binary Tree
// http://www.lintcode.com/en/problem/maximum-depth-of-binary-tree/
class LCDepthTree: NSObject {
    var depth: Int

    override init() {
        depth = 0
    }

    func helper(node: LCTreeNode?, curtDepth: Int) {
        if let currentNode = node {
            if curtDepth > depth {
                depth = curtDepth
            }

            helper(currentNode.left, curtDepth: curtDepth + 1)
            helper(currentNode.right, curtDepth: curtDepth + 1)
        }
    }

    func maxDepthByTraverse(root: LCTreeNode) -> Int {
        depth = 0
        helper(root, curtDepth: 1)

        return depth
    }
}

extension LCDepthTree {
    class func maxDepth(root: LCTreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        let left = LCDepthTree.maxDepth(root.left)
        let right = LCDepthTree.maxDepth(root.right)

        return max(left, right) + 1
    }
}
