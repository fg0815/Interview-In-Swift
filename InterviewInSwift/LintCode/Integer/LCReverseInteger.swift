//
//  LCReverseInteger.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 17/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Reverse Integer
// http://www.lintcode.com/en/problem/reverse-integer/

/**
 Reverse digits of an integer. Returns 0 when the reversed integer overflows (signed 32-bit integer).
 
 Example
 Given x = 123, return 321
 
 Given x = -123, return -321
 
 */

struct LCReverseInteger {
    static func reverseInteger(_ num: Int) -> Int {
        var num = num;
        var reversed = 0
        
        while num != 0 {
            let temp = reversed * 10 + num % 10
            num = num / 10
            
            if temp / 10 != reversed {
                reversed = 0
                break
            }
            
            reversed = temp
        }
        
        return reversed
    }
}
