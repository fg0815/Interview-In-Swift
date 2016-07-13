//
//  LCMergeTwoLists.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Merge Two Sorted Lists
// http://www.lintcode.com/en/problem/merge-two-sorted-lists/
class LCMergeTwoLists: NSObject {
    class func mergeTwoLists(l1: LCLinkedListNode, l2: LCLinkedListNode) -> LCLinkedListNode {
        var mutableL1: LCLinkedListNode? = l1
        var mutableL2: LCLinkedListNode? = l2

        let newList = LCLinkedListNode.init(val: 0)
        var temp = newList

        while mutableL1 != nil && mutableL2 != nil {
            if (mutableL1!.val < mutableL2!.val) {
                temp.next = mutableL1!
                mutableL1 = mutableL1!.next
            } else {
                temp.next = mutableL2!
                mutableL2 = mutableL2!.next
            }

            temp = temp.next!
        }

        if (mutableL1 != nil) {
            temp.next = mutableL1!
        } else {
            temp.next = mutableL2!
        }

        return newList.next!
    }
}
