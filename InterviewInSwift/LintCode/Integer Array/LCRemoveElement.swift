//
//  LCRemoveElement.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Remove Element
// http://www.lintcode.com/en/problem/remove-element/
class LCRemoveElement {
    /**
     *@param A: A list of integers
     *@param elem: An integer
     *@return: The new length after remove
     */
    class func removeElement(_ A: [Int], elem: Int) -> Int {
        var mutableA = A

        var i = 0
        var pointer = mutableA.count - 1

        while i <= pointer {
            if mutableA[i] == elem {
                mutableA[i] = mutableA[pointer]
                pointer-=1
            } else {
                i+=1
            }
        }

        return pointer + 1
    }
}
