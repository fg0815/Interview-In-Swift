//
//  LC244WordDistanceII.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Shortest Word Distance II
// https://leetcode.com/problems/shortest-word-distance-ii/

/**
 Design a class which receives a list of words in the constructor, and implements a method that takes two words word1 and word2 and return the shortest distance between these two words in the list.
 
 For example,
 Assume that words = ["practice", "makes", "perfect", "coding", "makes"].
 
 Given word1 = “coding”, word2 = “practice”, return 3.
 Given word1 = "makes", word2 = "coding", return 1.
 
 Note:
 You may assume that word1 does not equal to word2, and word1 and word2 are both in the list.
 */

class LC244WordDistanceII: NSObject {
    
    var map: [String: [Int]]
    
    init(words: [String]) {
        map = [String: [Int]]()
        for i in 0 ..< words.count {
            let word = words[i]
            if map[word] != nil {
                map[word]?.append(i)
            } else {
                var list: [Int] = []
                list.append(i)
                map[word] = list
            }
        }
    }
    
    func shortest(_ word1: String, word2: String) -> Int {
        let index1 = map[word1]!
        let index2 = map[word2]!
        
        var distance = Int.max
        
        for i in index1 {
            for j in index2 {
                distance = min(distance, abs(i-j))
            }
        }
        
        return distance
    }
}
