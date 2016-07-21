//
//  LC153FindMinimumInRotatedSortedArray.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 153. Find Minimum in Rotated Sorted Array
 https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
 
 Suppose a sorted array is rotated at some pivot unknown to you beforehand.
 
 (i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).
 
 Find the minimum element.
 
 You may assume no duplicate exists in the array.
 */
class LC153FindMinimumInRotatedSortedArray {
    class func findMin(nums: [Int]) -> Int {
        return LCFindMinimum.findMin(nums)
    }
}
