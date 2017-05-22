//
//  LKISameTree.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Refer to `LC100SameTree`
// Same tree, mirror tree
class LKISameTree: NSObject {
    class func isSameTree(_ node1: LCTreeNode?, node2: LCTreeNode?) -> Bool {
        return LC100SameTree.isSameTree(node1, node2: node2)
    }
}
