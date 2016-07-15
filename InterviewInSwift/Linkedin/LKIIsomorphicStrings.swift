//
//  LKIIsomorphicStrings.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 15/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Refer to `LC205IsomorphicStrings`
// Given two words as Strings, determine if they are isomorphic. Two words are called isomorphic if the letters in one word can be remapped to get the second word. Remapping a letter means replacing all occurrences of it with another letter while the ordering of the letters remains unchanged. No two letters may map to the same letter, but a letter may map to itself.

class LKIIsomorphicStrings: NSObject {
    class func isIsomorphic(source: String, target: String) -> Bool {
        return LC205IsomorphicStrings.isIsomorphic(source, target: target)
    }
}
