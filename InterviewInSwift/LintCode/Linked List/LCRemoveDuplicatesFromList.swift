//
//  LCRemoveDuplicatesFromList.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Remove Duplicates from Sorted List
// http://www.lintcode.com/en/problem/remove-duplicates-from-sorted-list/
class LCRemoveDuplicatesFromList: NSObject {
    /**
     * @param ListNode head is the head of the linked list
     * @return: ListNode head of linked list
     */
    class func deleteDuplicates(head: LCLinkedListNode) -> LCLinkedListNode {
        var node = head
        
        while node.next != nil {
            if node.val == node.next!.val {
                node.next = node.next!.next
            } else {
                node = node.next!
            }
        }
        
        return head
    }
}
