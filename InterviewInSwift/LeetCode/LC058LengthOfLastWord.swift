//
//  LC058LengthOfLastWord.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 58. Length of Last Word
 https://leetcode.com/problems/length-of-last-word/
 
 Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.
 
 If the last word does not exist, return 0.
 
 Note: A word is defined as a character sequence consists of non-space characters only.
 
 For example,
 Given s = "Hello World",
 return 5.
 
 https://discuss.leetcode.com/topic/2743/my-simple-solution-in-c/2
 */

struct LC058LengthOfLastWord {
    static func lengthOfLastWord(string: String) -> Int {
        var length = 0
        var i = 0
        while i < string.characters.count {
            if string[i] != " " {
                length += 1
            } else if i + 1 < string.characters.count && string[i+1] != " "  {
                length = 0
            }
            i += 1
        }
        return length
    }
}