//
//  LCRemoveNodeFromList.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Remove Nth Node From End of List
// http://www.lintcode.com/en/problem/remove-nth-node-from-end-of-list/
class LCRemoveNodeFromList: NSObject {
    /**
     * @param head: The first node of linked list.
     * @param n: An integer.
     * @return: The head of linked list.
     */
    class func removeNthFromEnd(head: LCLinkedListNode, n: Int) -> LCLinkedListNode? {
        if n <= 0 {
            return nil
        }

        let tempStart = LCLinkedListNode.init(val: 0)
        tempStart.next = head

        var preDelete: LCLinkedListNode? = tempStart
        var current: LCLinkedListNode? = head
        for _ in 0..<n {
            if current == nil {
                return nil
            } else {
                current = current!.next
            }
        }

        while current != nil {
            current = current!.next
            preDelete = preDelete!.next
        }

        preDelete!.next = preDelete!.next!.next

        return tempStart.next
    }
}
