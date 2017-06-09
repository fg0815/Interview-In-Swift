//
//  LC008StringToIntegerAtoi.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 19/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 8. String to Integer (atoi)
 https://leetcode.com/problems/string-to-integer-atoi/
 
 Implement atoi to convert a string to an integer.
 
 Hint: Carefully consider all possible input cases. If you want a challenge, please do not see below and ask yourself what are the possible input cases.
 
 Notes: It is intended for this problem to be specified vaguely (ie, no given input specs). You are responsible to gather all the input requirements up front.
 

 */
struct LC008StringToIntegerAtoi {
    static func atoi(_ string: String) -> Int {
        var positive = true
        var base = 0
        for char in string.characters {
            guard char != "+" else {
                continue
            }
            guard char != " " else {
                continue
            }
            guard char != "-" else {
                if base == 0 {
                    positive = false
                }
                continue
            }
            guard let intValue = Int(String(char)) else {
                continue
            }
            guard base < Int.max / 10 || (base == Int.max / 10 && intValue <= Int.max % 10) else {
                if positive {
                    return Int.max
                } else {
                    return Int.min
                }
            }
            base = intValue + 10 * base
        }
        if positive {
            return base
        } else {
            return 0 - base
        }
    }
}


