//
//  LCTwoSum.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 15/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Two Sum
// http://www.lintcode.com/en/problem/two-sum/

/**
 Given an array of integers, find two numbers such that they add up to a specific target number.
 
 The function twoSum should return indices of the two numbers such that they add up to the target, where index1 must be less than index2. Please note that your returned answers (both index1 and index2) are NOT zero-based.
 
 Example
 numbers=[2, 7, 11, 15], target=9
 
 return [0, 1]
 */
class LCTwoSum {
    /*
     * @param numbers : An array of Integer
     * @param target : target = numbers[index1] + numbers[index2]
     * @return : [index1 + 1, index2 + 1] (index1 < index2)
     */
    class func twoSum(_ numbers: [Int], target: Int) -> [Int] {
        var map = [Int: Int]()
        
        for i in 0 ..< numbers.count {
            if let value = map[numbers[i]] {
                return [value, i]
            } else {
                map[target - numbers[i]] = i
            }
        }
        
        return []
        
    }
}
