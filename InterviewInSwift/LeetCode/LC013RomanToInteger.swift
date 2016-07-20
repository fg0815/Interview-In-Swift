//
//  LC013RomanToInteger.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 20/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 13. Roman to Integer
 https://leetcode.com/problems/roman-to-integer/
 
 Given a roman numeral, convert it to an integer.
 
 Input is guaranteed to be within the range from 1 to 3999.
 */

struct LC013RomanToInteger {
    // O (N)
    // One pass
    static func romanToInt(s: String) -> Int {
        var result: Int = 0
        let length: Int = s.characters.count
        for i in (0...length-1).reverse() {
            let c = s[i]
            switch c {
            case "I":
                result += result >= 5 ? -1 : 1
            case "V":
                result += 5
            case "X":
                result += 10 * (result >= 50 ? -1 : 1)
            case "L":
                result += 50
            case "C":
                result += 100 * (result >= 500 ? -1 : 1)
            case "D":
                result += 500
            case "M":
                result += 1000
            default:
                break
            }
        }
        return result
    }
}