//
//  LKICommonAncestor.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

/// Refer to `LCLowestCommonAncestor`

// Find common ancestor in binary tree
class LKICommonAncestor: NSObject {
    class func lowestCommonAncestor(root: LCTreeNode?,
                                    node1: LCTreeNode,
                                    node2: LCTreeNode) -> LCTreeNode? {
        return LCLowestCommonAncestor.lowestCommonAncestor(root, node1: node1, node2: node2)
    }
}
