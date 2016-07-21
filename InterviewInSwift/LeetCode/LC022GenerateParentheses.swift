//
//  LC022GenerateParentheses.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 22. Generate Parentheses
 https://leetcode.com/problems/generate-parentheses/
 
 Given n pairs of parentheses, write a function to generate all combinations of well-formed parentheses.
 
 For example, given n = 3, a solution set is:
 
 [
 "((()))",
 "(()())",
 "(())()",
 "()(())",
 "()()()"
 ]
 */

class LC022GenerateParentheses {
    class func generateParenthesis(n: Int) -> [String] {
        var result: [String] = []
        helper(&result, str: "", n: n, m: 0)
        return result
    }
    
    class func helper(inout array: [String], str: String, n: Int, m: Int) {
        if m == 0 && n == 0 {
            array.append(str)
            return
        }
        if m > 0 {
            helper(&array, str: str + ")", n: n, m: m-1)
        }
        if n > 0 {
            helper(&array, str: str + "(", n: n-1, m: m+1)
        }
    }
}
