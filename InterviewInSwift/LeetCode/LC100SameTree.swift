//
//  LC100SameTree.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Same Tree
// https://leetcode.com/problems/same-tree/
class LC100SameTree: NSObject {
    class func isSameTree(p: LCTreeNode?, q: LCTreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p == nil || q == nil {
            return false
        }
        
        if let p = p, q = q {
            if p.val == q.val {
                let left = LC100SameTree.isSameTree(p.left, q: q.left)
                let right = LC100SameTree.isSameTree(p.right, q: q.right)
                
                return left && right
            }
        }
        
        return false
        
    }
}
