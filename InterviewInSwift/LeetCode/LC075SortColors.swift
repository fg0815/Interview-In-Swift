//
//  LC075SortColors.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 75. Sort Colors
 https://leetcode.com/problems/sort-colors/
 
 Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.
 
 Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.
 
 Note:
 You are not suppose to use the library's sort function for this problem.
 
 Follow up:
 A rather straight forward solution is a two-pass algorithm using counting sort.
 First, iterate the array counting number of 0's, 1's, and 2's, then overwrite array with total number of 0's, then 1's and followed by 2's.
 
 Could you come up with an one-pass algorithm using only constant space?
 */

struct LC075SortColors {
    static func sortColors(_ nums: inout [Int]) {
        var red = -1
        var white = -1
        var blue = -1
        for i in 0 ..< nums.count {
            if nums[i] == 0 {
                blue += 1
                white += 1
                red += 1
                nums[blue] = 2
                nums[white] = 1
                nums[red] = 0
            } else if nums[i] == 1 {
                blue += 1
                white += 1
                nums[blue] = 2
                nums[white] = 1
            } else {
                blue += 1
                nums[blue] = 2
            }
        }
    }
}
