//
//  LCFindPeakElement.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Find Peak Element
// http://www.lintcode.com/en/problem/find-peak-element/
class LCFindPeakElement: NSObject {
    /**
     * @param A: An integers array.
     * @return: return any of peek positions.
     */
    class func findPeak(A: [Int]) -> Int {
        var start = 1
        var end = A.count - 2
        
        while start + 1 < end {
            let mid = (start + end) / 2
            
            if A[mid] < A[mid - 1] {
                end = mid
            } else if A[mid] < A[mid + 1] {
                start = mid
            } else {
                end = mid
            }
        }
        
        if A[start] < A[end] {
            return end
        } else {
            return start
        }
    }
}
