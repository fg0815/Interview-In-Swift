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
        let n = A.count;
        if n == 1 {
            return 0
        }
        
        var start = 0;
        var end = n - 1;
        var mid = 0;
        
        while start <= end {
            mid = start + (end - start) / 2
            if (mid == 0 || A[mid] >= A[mid - 1]) && (mid == n - 1 || A[mid] >= A[mid + 1]) {
                return mid
            } else if mid > 0 && A[mid-1] > A[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }
        
        return mid
    }
}
