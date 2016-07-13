//
//  LCReverseLinkedList.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Reverse Linked List
// http://www.lintcode.com/en/problem/reverse-linked-list/
class LCReverseLinkedList: NSObject {
    /**
     * @param head: The head of linked list.
     * @return: The new head of reversed linked list.
     */
    class func reverse(head: LCLinkedListNode) -> LCLinkedListNode {
        var prev: LCLinkedListNode? = nil
        var current: LCLinkedListNode? = head
        while current != nil {
            let temp = current!.next
            current!.next = prev
            prev = current
            current = temp
        }

        return prev!
    }
}
