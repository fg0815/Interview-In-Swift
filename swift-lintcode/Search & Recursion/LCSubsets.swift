//
//  LCSubsets.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 11/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Subsets
// http://www.lintcode.com/en/problem/subsets/
class LCSubsets: NSObject {
    // Non Recursion
    class func subsets(nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        let n = nums.count
        var sorted = nums
        sorted.sortInPlace()
        
        // 1 << n is 2^n
        // each subset equals to an binary integer between 0 .. 2^n - 1
        // 0 -> 000 -> []
        // 1 -> 001 -> [1]
        // 2 -> 010 -> [2]
        // ..
        // 7 -> 111 -> [1,2,3]
        for i in 0 ..< 1<<n {
            var subset: [Int] = []
            for j in 0 ..< n {
                if i & (1 << j) != 0 {
                    subset.append(sorted[j])
                }
            }
            
            result.append(subset)
        }
    
        return result;
    }
}
