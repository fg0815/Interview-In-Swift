//
//  LC110BalancedBinaryTree.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 110. Balanced Binary Tree
 https://leetcode.com/problems/balanced-binary-tree/
 
 Given a binary tree, determine if it is height-balanced.
 
 For this problem, a height-balanced binary tree is defined as a binary tree in which the depth of the two subtrees of every node never differ by more than 1.
 */
class LC110B {
    class func isBalanced(root: LCTreeNode) -> Bool {
        return LCBalancedTree.isBalanced(root)
    }
}