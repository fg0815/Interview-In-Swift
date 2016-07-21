//
//  LCFindPeakElement.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Find Peak Element
// http://www.lintcode.com/en/problem/find-peak-element/
class LCFindPeakElement {
    /**
     * @param nums: An integers array.
     * @return: return any of peek positions.
     */
    class func findPeak(nums: [Int]) -> Int {
        let n = nums.count
        if n == 1 {
            return 0
        }

        var start = 0
        var end = n - 1
        var mid = 0

        while start <= end {
            mid = start + (end - start) / 2
            if (mid == 0 || nums[mid] >= nums[mid - 1]) && (mid == n - 1 || nums[mid] >= nums[mid + 1]) {
                return mid
            } else if mid > 0 && nums[mid-1] > nums[mid] {
                end = mid - 1
            } else {
                start = mid + 1
            }
        }

        return mid
    }
}
