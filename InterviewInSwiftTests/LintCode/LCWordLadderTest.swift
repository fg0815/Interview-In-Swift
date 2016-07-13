//
//  LCWordLadderTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 7/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCWordLadderTest: XCTestCase {
    /**
     *  Given:
     *  start = "hit"
     *  end = "cog"
     *  dict = ["hot","dot","dog","lot","log"]
     *  As one shortest transformation is "hit" -> "hot" -> "dot" -> "dog" -> "cog",
     *  return its length 5.
     *
     */
    func testLadderLength() {
        let wordLadder = LCWordLadder()
        var set = Set(["hot", "dot", "dog", "lot", "log"])
        XCTAssertTrue(wordLadder.ladderLength("hit", end: "cog", dict: &set) == 5)
    }
}
