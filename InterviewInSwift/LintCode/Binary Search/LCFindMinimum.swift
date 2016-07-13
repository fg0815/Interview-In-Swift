//
//  LCFindMinimum.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Find Minimum in Rotated Sorted Array
// http://www.lintcode.com/en/problem/find-minimum-in-rotated-sorted-array/
class LCFindMinimum: NSObject {
    /**
     the minimum number in the array

     - parameter nums: a rotated sorted array

     - returns: the minimum number in the array
     */
    class func findMin(nums: [Int]) -> Int {
        if nums.count == 0 {
            return -1
        }

        var start = 0, end = nums.count - 1
        let target = nums[nums.count - 1]

        // find the first element <= target
        while start + 1 < end {
            let mid = start + (end - start) / 2
            if nums[mid] <= target {
                end = mid
            } else {
                start = mid
            }
        }

        if nums[start] <= target {
            return nums[start]
        } else {
            return nums[end]
        }
    }
}
