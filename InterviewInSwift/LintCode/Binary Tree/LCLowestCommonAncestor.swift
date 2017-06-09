//
//  LCLowestCommonAncestor.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Lowest Common Ancestor
// http://www.lintcode.com/en/problem/lowest-common-ancestor/
class LCLowestCommonAncestor {
    /**
     * @param root: The root of the binary search tree.
     * @param A and B: two nodes in a Binary.
     * @return: Return the least common ancestor(LCA) of the two nodes.
     */
    class func lowestCommonAncestor(_ root: LCTreeNode?, node1: LCTreeNode, node2: LCTreeNode) -> LCTreeNode? {
        guard let root = root else {
            return nil
        }

        if root == node1 || root == node2 {
            return root
        }

        // Divide
        let left = LCLowestCommonAncestor.lowestCommonAncestor(root.left, node1: node1, node2: node2)
        let right = LCLowestCommonAncestor.lowestCommonAncestor(root.right, node1: node1, node2: node2)

        // Conquer
        if left != nil && right != nil {
            return root
        }

        if left != nil {
            return left
        }

        if right != nil {
            return right
        }

        return nil
    }
}
