//
//  LCSubsetsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 11/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCSubsetsTest: XCTestCase {
    /**
     If S = [1,2,3], a solution is:

     [
     [3],
     [1],
     [2],
     [1,2,3],
     [1,3],
     [2,3],
     [1,2],
     []
     ]
     */
    func testSubsets() {
        let input1 = [1, 2,3]
        let expectedOutput1 = [
            [3],
            [1],
            [2],
            [1, 2, 3],
            [1, 3],
            [2, 3],
            [1, 2],
            []
        ]
        let output1 = LCSubsets.subsets(input1)

        XCTAssertTrue(expectedOutput1.count == output1.count)

        for array in expectedOutput1 {
            XCTAssertTrue(output1.contains {
                $0 == array
            })
        }
    }
}
