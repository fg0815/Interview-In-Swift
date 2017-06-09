//
//  LCFirstPosition.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 First Position of Target
 http://www.lintcode.com/en/problem/first-position-of-target/
 
 For a given sorted array (ascending order) and a target number, find the first index of this number in O(log n) time complexity.
 
 If the target number does not exist in the array, return -1.
 */
class LCFirstPosition {
    /**
     * @param nums: The integer array.
     * @param target: Target to find.
     * @return: The first position of target. Position starts from 0.
     */
    class func binarySearch(_ nums: [Int], target: Int) -> Int {
        if nums.count == 0 {
            return -1
        }

        var start = 0
        var end = nums.count - 1

        while start + 1 < end {
            let mid = start + (end - start) / 2
            if nums[mid] == target {
                end = mid
            } else if nums[mid] < target {
                start = mid
            } else {
                end = mid
            }
        }

        if nums[start] == target {
            return start
        }

        if nums[end] == target {
            return end
        }

        return -1
    }
}
