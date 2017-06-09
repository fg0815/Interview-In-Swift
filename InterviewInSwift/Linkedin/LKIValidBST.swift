//
//  LKIValidBST.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

/// refer to `LCBSTValidation`

// validate is a binary search tree is legit
class LKIValidBST: NSObject {
    class func isValidBST(_ root: LCTreeNode?) -> Bool {
        let validator = LCBSTValidation()
        return validator.isValidBST(root)
    }
}
