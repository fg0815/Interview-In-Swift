//
//  LCLinkedListNode.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCLinkedListNode: NSObject {
    var val: Int
    var next: LCLinkedListNode?

    init(val: Int) {
        self.val = val
    }

    init(val: Int, next: LCLinkedListNode) {
        self.val = val
        self.next = next
    }
}
