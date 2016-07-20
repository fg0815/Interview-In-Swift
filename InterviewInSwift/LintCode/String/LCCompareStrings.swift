//
//  LCCompareStrings.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 26/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Compare Strings
// http://www.lintcode.com/en/problem/compare-strings/
class LCCompareStrings: NSObject {
    /**
     * @param A : A string includes Upper Case letters
     * @param B : A string includes Upper Case letter
     * @return :  if string A contains all of the characters in B return true else return false
     */
    class func compareStrings(A: String, B: String) -> Bool {
        var dictionary = [String : Int]()

        for character in A.characters {
            if var count = dictionary[String(character)] {
                count = count + 1
                dictionary[String(character)] = count
            } else {
                dictionary[String(character)] = 1
            }
        }

        for character in B.characters {
            if var count = dictionary[String(character)] {
                count = count - 1
                dictionary[String(character)] = count
                if (count < 0) {
                    return false
                }
            } else {
                return false
            }
        }

        return true
    }

}
