//
//  LCWordLadder.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 7/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Word Ladder
// http://www.lintcode.com/en/problem/word-ladder/
class LCWordLadder: NSObject {
    /**
     * @param start, a string
     * @param end, a string
     * @param dict, a set of string
     * @return an integer
     */
    func ladderLength(start: String, end: String, inout dict: Set<String>) -> Int {
        if dict.count == 0 {
            return 0
        }
        
        if start == end {
            return 1
        }
        
        dict.insert(start)
        dict.insert(end)
        
        var hashSet = Set<String>()
        let queue = LCQueue<String>()
        queue.enqueue(start)
        hashSet.insert(start)
        
        var length = 1
        while !queue.isEmpty() {
            length += 1
            let size = queue.size()
            for _ in 0 ..< size {
                guard let word = queue.dequeue() else {
                    preconditionFailure("word is expected")
                }
                
                for nextWord in getNextWords(word, dict: dict) {
                    if hashSet.contains(nextWord) {
                        continue
                    }
                    
                    if nextWord == end {
                        return length
                    }
                    
                    hashSet.insert(nextWord)
                    queue.enqueue(nextWord)
                }
            }
        }
        
        return 0
    }

    // get connections with given word.
    // for example, given word = 'hot', dict = {'hot', 'hit', 'hog'}
    // it will return ['hit', 'hog']
    private func getNextWords(word: String, dict: Set<String>) -> [String] {
        var nextWords: [String] = []
        let charA: Character = "a"
        let charZ: Character = "z"
        for c in charA.unicodeScalarCodePoint() ... charZ.unicodeScalarCodePoint() {
            var i = 0
            for character in word.characters {
                if c == character.unicodeScalarCodePoint() {
                    continue
                }

                let nextWord = replace(word, index: i, c: Character(UnicodeScalar(c)))
                
                if dict.contains(nextWord) {
                    nextWords.append(nextWord)
                }
                
                i += 1
            }
        }
        
        return nextWords
    }
    
    // replace character of a string at given index to a given character
    // return a new string
    private func replace(s: String, index: Int, c: Character) -> String {
        var characters = Array(s.characters)
        characters[index] = c
        return String(characters)
    }

}

extension Character
{
    func unicodeScalarCodePoint() -> UInt32
    {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex].value
    }
}
