//
//  LCStrStr.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 26/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// strStr
// http://www.lintcode.com/en/problem/strstr/
class LCStrStr {
    /**
     * Returns a index to the first occurrence of target in source,
     * or -1  if target is not part of source.
     * @param source string to be scanned.
     * @param target string containing the sequence of characters to match.
     */
    class func strStr(_ source: String, target: String) -> Int {
        for i in 0..<source.characters.count - target.characters.count + 1 {
            var count = 0
            for j in 0..<target.characters.count {
                count = j
                if source[source.characters.index(source.startIndex, offsetBy: i+j)] != target[target.characters.index(target.startIndex, offsetBy: j)] {
                    break
                }
            }

            if count + 1 == target.characters.count {
                return i
            }

        }

        return -1

    }
}
