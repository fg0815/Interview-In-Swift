//
//  LCTreeNode.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCTreeNode: NSObject {
    var val: Int
    var left: LCTreeNode?
    var right: LCTreeNode?

    init(val: Int) {
        self.val = val
    }

    init(val: Int, left: LCTreeNode?, right: LCTreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }


}
