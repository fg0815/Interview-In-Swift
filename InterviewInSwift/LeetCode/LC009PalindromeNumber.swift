//
//  LC009PalindromeNumber.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 19/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 9. Palindrome Number
 https://leetcode.com/problems/palindrome-number/
 
 Determine whether an integer is a palindrome. Do this without extra space.
 
 click to show spoilers.
 
 Some hints:
 Could negative integers be palindromes? (ie, -1)
 
 If you are thinking of converting the integer to string, note the restriction of using extra space.
 
 You could also try reversing an integer. However, if you have solved the problem "Reverse Integer", you know that the reversed integer might overflow. How would you handle such case?
 
 */

struct LC009PalindromeNumber {
    static func isPalindrome(_ num: Int) -> Bool {
        var palindromeNum = 0
        var tmp = num
        while tmp > 0 {
            if palindromeNum >= Int.max / 10 {
                return false
            }
            palindromeNum = palindromeNum * 10 + tmp % 10
            tmp = tmp / 10
        }
        return palindromeNum == num
    }

}
