//
//  LC162FindPeakElement.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 162. Find Peak Element
 https://leetcode.com/problems/find-peak-element/
 
 A peak element is an element that is greater than its neighbors.
 
 Given an input array where num[i] ≠ num[i+1], find a peak element and return its index.
 
 The array may contain multiple peaks, in that case return the index to any one of the peaks is fine.
 
 You may imagine that num[-1] = num[n] = -∞.
 
 For example, in array [1, 2, 3, 1], 3 is a peak element and your function should return the index number 2.
 
 Note:
 Your solution should be in logarithmic complexity.
 */
class LC162FindPeakElement {
    class func findPeak(_ nums: [Int]) -> Int {
        return LCFindPeakElement.findPeak(nums)
    }
}
