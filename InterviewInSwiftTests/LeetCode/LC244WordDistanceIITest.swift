//
//  LC244WordDistanceIITest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC244WordDistanceIITest: XCTestCase {
    /**
     Assume that words = ["practice", "makes", "perfect", "coding", "makes"].
 
     Given word1 = “coding”, word2 = “practice”, return 3.
     Given word1 = "makes", word2 = "coding", return 1.
    */
    func testLC244WordDistanceII() {
        let words = ["practice", "makes", "perfect", "coding", "makes"]
        let distance = LC244WordDistanceII.init(words: words)
        
        XCTAssert(distance.shortest("coding", word2: "practice") == 3)
        XCTAssert(distance.shortest("makes", word2: "coding") == 1)
    }
}
