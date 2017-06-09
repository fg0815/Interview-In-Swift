//
//  LCTreeNodeHelper.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCTreeNodeHelper: NSObject {
    /**
     Compare two `LCTreeNode` nodes

     - parameter node1: `LCTreeNode` node
     - parameter node2: `LCTreeNode` node

     - returns: true if two nodes are the same, otherwise return false
     */
    class func compare(_ node1: LCTreeNode?, node2: LCTreeNode?) -> Bool {
        if let currentNode1 = node1, let currentNode2 = node2 {
            if currentNode1.val != currentNode2.val {
                return false
            } else {
                var isSame = false
                isSame = compare(currentNode1.left, node2: currentNode2.left)
                isSame = compare(currentNode1.right, node2: currentNode2.right)
                return isSame
            }

        } else if node1 == nil && node2 == nil {
            return true
        }

        return false
    }

    /**
     Create `LCTreeNode` by passing string

     For example,
     3,9,20,#,#,15,7

     will generate the tree below

                3
               / \
              9  20
                /  \
               15   7

     - parameter nodesString: all nodes value from top to bottom, 
                 '#' from empty node, use ',' to separate

     - returns: `LCTreeNode` object
     */
    class func createTreeNode(_ nodesString: String) -> LCTreeNode {
        let nodes = nodesString.components(separatedBy: ",")

        var queue: [LCTreeNode] = []
        let root = LCTreeNode.init(val: Int(nodes[0])!)
        queue.append(root)

        var index = 0
        var isLeftChild = true

        for i in 1..<nodes.count {
            if nodes[i] != "#" {
                let node = LCTreeNode.init(val: Int(nodes[i])!)
                if isLeftChild {
                    queue[index].left = node
                } else {
                    queue[index].right = node
                }

                queue.append(node)
            }

            if !isLeftChild {
                index += 1
            }

            isLeftChild = !isLeftChild
        }

        return root
    }

    class func treeNode(_ root: LCTreeNode, value: Int) -> LCTreeNode? {
        if root.val == value {
            return root
        }

        if root.left != nil {
            if let left = LCTreeNodeHelper.treeNode(root.left!, value: value) {
                return left
            }
        }

        if root.right != nil {
            if let right = LCTreeNodeHelper.treeNode(root.right!, value: value) {
                return right
            }
        }

        return nil
    }
}
