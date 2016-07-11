//
//  LCAddTwoNumbers.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 10/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Add Two Numbers
// http://www.lintcode.com/en/problem/add-two-numbers/
class LCAddTwoNumbers: NSObject {
    class func addTwoNumbers(l1: LCLinkedListNode, l2: LCLinkedListNode) -> LCLinkedListNode {
        var currentL1: LCLinkedListNode? = l1
        var currentL2: LCLinkedListNode? = l2
        
        let head = LCLinkedListNode.init(val: 0)
        var point = head
        
        var carry = 0
        
        while currentL1 != nil && currentL2 != nil {
            let sum = carry + currentL1!.val + currentL2!.val
            point.next = LCLinkedListNode.init(val: sum % 10)
            carry = sum / 10
            currentL1 = currentL1!.next
            currentL2 = currentL2!.next
            point = point.next!
        }
        
        while currentL1 != nil {
            let sum = carry + currentL1!.val
            point.next = LCLinkedListNode(val: sum % 10)
            carry = sum / 10
            currentL1 = currentL1!.next
            point = point.next!
        }
        
        while currentL2 != nil {
            let sum = carry + currentL2!.val
            point.next = LCLinkedListNode(val: sum % 10)
            carry = sum / 10
            currentL2 = currentL2!.next
            point = point.next!
        }
        
        if carry != 0 {
            point.next = LCLinkedListNode.init(val: carry)
        }
        
        return head.next!
    }
}
