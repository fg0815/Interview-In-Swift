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
     * @param stringA: The first string
     * @param stringB: The second string
     * @return true or false
     */
    class func anagram(stringA: String, stringB: String) -> Bool {
        if stringA.characters.count != stringB.characters.count {
            return false
        }

        var dictionary = [String : Int]()

        for character in stringA.characters {
            if var count = dictionary[String(character)] {
                count = count + 1
                dictionary[String(character)] = count
            } else {
                dictionary[String(character)] = 1
            }

        }

        for character in stringB.characters {
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
