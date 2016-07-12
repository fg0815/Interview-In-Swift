//
//  LCAnagrams.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 25/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// http://www.lintcode.com/en/problem/two-strings-are-anagrams/
class LCAnagrams: NSObject {
    /**
     * @param s: The first string
     * @param b: The second string
     * @return true or false
     */
    class func anagram(s: String, t: String) -> Bool {
        if s.characters.count != t.characters.count {
            return false
        }
        
        var dictionary = [String : Int]()
        
        for character in s.characters {
            if var count = dictionary[String(character)] {
                count = count + 1
                dictionary[String(character)] = count
            } else {
                dictionary[String(character)] = 1
            }
            
        }
        
        for character in t.characters {
            if var count = dictionary[String(character)] {
                count = count - 1
                dictionary[String(character)] = count
                if count < 0 {
                    return false
                }

            } else {
                return false
            }
            
        }
        
        return true
    }
}