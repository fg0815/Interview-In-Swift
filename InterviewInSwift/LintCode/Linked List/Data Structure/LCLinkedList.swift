//
//  LCLinkedList.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 29/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

class LCLinkedList: NSObject {

    class func linkedList(values: [Int]) -> LCLinkedListNode {
        let root = LCLinkedListNode.init(val: values[0])
        var current = root
        for i in 1..<values.count {
            let newNode = LCLinkedListNode.init(val: values[i])
            current.next = newNode
            current = newNode
        }

        return root
    }

    /**
     Compare 2 linked list nodes

     - parameter node1: the first `LCLinkedListNode`
     - parameter node2: the second `LCLinkedListNode`

     - returns: true for the same, otherwise false
     */
    class func compare(node1: LCLinkedListNode, node2: LCLinkedListNode) -> Bool {
        var current1: LCLinkedListNode? = node1
        var current2: LCLinkedListNode? = node2

        while current1 != nil {
            if current2 == nil {
                return false
            }

            if current1!.val != current2!.val {
                return false
            }

            current1 = current1!.next
            current2 = current2!.next
        }

        if current2 != nil {
            return false
        }

        return true
    }
}
