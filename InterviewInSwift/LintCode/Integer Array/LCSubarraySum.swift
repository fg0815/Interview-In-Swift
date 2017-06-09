//
//  LCSubarraySum.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Subarray Sum
// http://www.lintcode.com/en/problem/subarray-sum/
class LCSubarraySum {
    /**
     * @param nums: A list of integers
     * @return: A list of integers includes the index of the first number
     *          and the index of the last number
     */
    class func subarraySum(_ nums: [Int]) -> [Int] {
        let len = nums.count
        var ans = [Int]()
        var map = [Int : Int]()

        map[0] = -1

        var sum = 0
        for i in 0..<len {
            sum += nums[i]

            if let value = map[sum] {
                ans.append(value + 1)
                ans.append(i)
                return ans
            }

            map[sum] = i
        }

        return ans
    }
}
