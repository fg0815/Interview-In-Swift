//
//  LC098ValidateBinarySearchTree.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 98. Validate Binary Search Tree
 https://leetcode.com/problems/validate-binary-search-tree/
 
 Given a binary tree, determine if it is a valid binary search tree (BST).
 
 Assume a BST is defined as follows:
 
 The left subtree of a node contains only nodes with keys less than the node's key.
 The right subtree of a node contains only nodes with keys greater than the node's key.
 Both the left and right subtrees must also be binary search trees.
 Example 1:
   2
  / \
 1   3
 Binary tree [2,1,3], return true.
 Example 2:
   1
  / \
 2   3
 Binary tree [1,2,3], return false.
 */
class LC098ValidateBinarySearchTree {
    class func isValidBST(_ root: LCTreeNode) -> Bool {
        let validation = LCBSTValidation()
        return validation.isValidBST(root)
    }
}
