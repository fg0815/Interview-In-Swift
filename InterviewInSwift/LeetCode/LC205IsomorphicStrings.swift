//
//  LC205IsomorphicStrings.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// 205. Isomorphic Strings
// https://leetcode.com/problems/isomorphic-strings/

/**
 Given two strings s and t, determine if they are isomorphic.
 
 Two strings are isomorphic if the characters in s can be replaced to get t.
 
 All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.
 
 For example,
 Given "egg", "add", return true.
 
 Given "foo", "bar", return false.
 
 Given "paper", "title", return true.
 */
class LC205IsomorphicStrings: NSObject {
    class func isIsomorphic(_ source: String, target: String) -> Bool {
        var map = [String : String]()
        
        if source.characters.count != target.characters.count {
            return false
        }
        
        for i in 0 ..< source.characters.count {
            if let mappingCharacter = map[source.stringAtIndex(i)] {
                if mappingCharacter != target.stringAtIndex(i) {
                    return false
                }
            } else {
                map[source.stringAtIndex(i)] = target.stringAtIndex(i)
            }
        }
        
        return true
    }
}
