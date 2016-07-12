//
//  LCQueue.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 5/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCQueue<T> {
    private var front: LCQueueItem<T>
    private var back: LCQueueItem<T>
    private var count: Int
    
    init() {
        back = LCQueueItem(newValue: nil)
        front = back
        count = 0
    }
    
    /**
     Add a new item to the back of the queue.
     
     - parameter value: new value
     */
    func enqueue(value: T?) {
        back.next = LCQueueItem(newValue: value)
        back = back.next!
        count += 1
    }
    
    /**
     Return and remove the item at the front of the queue.
     
     - returns: the front item of the queue
     */
    func dequeue() -> T? {
        guard let newHead: LCQueueItem<T> = front.next  else {
            return nil
        }
        
        front = newHead
        count -= 1
        
        return newHead.value
    }
    
    /**
     Return the front item
     
     - returns: front item
     */
    func peek() -> T? {
        return front.value
    }
    
    /**
     Return if empty for the queue
     
     - returns: true for empty otherwise false
     */
    func isEmpty() -> Bool {
        return front === back
    }
    
    /**
     return the size of the queue
     
     - returns: number of items
     */
    func size() -> Int {
        return count
    }
    
}
