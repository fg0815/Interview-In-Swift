//
//  LCPermutationsIITest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCPermutationsIITest: XCTestCase {
    func testLCPermutationsII() {
        let nums = [1,2,2]
        let permutations = LCPermutationsII.init()
        let result = permutations.permuteUnique(nums)
        let expectedResult = [
            [1,2,2],
            [2,1,2],
            [2,2,1]
        ]
        
        XCTAssert(result.count == 3)
        
        for expectedList in expectedResult {
            var hasList = false
            for list in result {
                if list == expectedList {
                    hasList = true
                }
            }
            XCTAssertTrue(hasList)
        }
    }
}
