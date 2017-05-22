//
//  LKIShortDistance.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Refer to `LC244WordDistanceII`
// Find the minimum distance between 2 words in a dictionary

class LKIShortDistance: NSObject {
    class func shortDistance(_ words: [String], word1: String, word2: String) -> Int {
        let distance = LC244WordDistanceII.init(words: words)
        return distance.shortest(word1, word2: word2)
    }
}
