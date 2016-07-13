//
//  LCAnagramsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 26/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// Given s = "abcd", t = "dcab", return true.
// Given s = "ab", t = "ab", return true.
// Given s = "ab", t = "ac", return false.
class LCAnagramsTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testAnagram() {
        let s1 = "abcd"
        let t1 = "dcab"
        XCTAssertTrue(LCAnagrams.anagram(s1, stringB: t1))

        let s2 = "ab"
        let t2 = "ab"
        XCTAssertTrue(LCAnagrams.anagram(s2, stringB: t2))

        let s3 = "ab"
        let t3 = "ac"
        XCTAssertFalse(LCAnagrams.anagram(s3, stringB: t3))
    }
}
