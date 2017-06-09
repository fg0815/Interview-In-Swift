//
//  LCPlusOne.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 Plus One
 http://www.lintcode.com/en/problem/plus-one/
 
 Given a non-negative number represented as an array of digits, plus one to the number.
 
 The digits are stored such that the most significant digit is at the head of the list.
 
 Example
 Given [1,2,3] which represents 123, return [1,2,4].
 Given [9,9,9] which represents 999, return [1,0,0,0].
 
 */
struct LCPlusOne {
    /**
     Based on the an array of digits, it returns the array with plus one
     
     - parameter digits: digits a number represented as an array of digits
     
     - returns: the result
     */
    static func plusOne(_ digits: [Int]) -> [Int] {
        var digits = digits
        var carries = 1
        var index = digits.count - 1;
        
        while index >= 0 && carries > 0 {
            let sum = digits[index] + carries
            digits[index] = sum % 10
            carries = sum / 10
            index -= 1
        }
        
        if carries == 0 {
            return digits
        }
        
        var result: [Int] = []
        result.append(1)
        
        for i in 1 ..< digits.count + 1 {
            result.append(digits[i - 1])
        }
        
        return result
    }
    
}
