//
//  LCRemoveDuplicates.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// http://www.lintcode.com/en/problem/remove-duplicates-from-sorted-array/
class LCRemoveDuplicates: NSObject {
    /**
     * @param A: a array of integers
     * @return : return an integer
     */
    class func removeDuplicates(nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        
        var size = 0
        var mutableNums = nums
        
        for i in 0..<mutableNums.count {
            if mutableNums[i] != mutableNums[size] {
                size+=1
                mutableNums[size] = mutableNums[i];
            }
        }
        
        return size + 1;
        
    }
}
