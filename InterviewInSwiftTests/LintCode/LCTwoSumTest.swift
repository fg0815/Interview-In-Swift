//
//  LCTwoSumTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 15/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCTwoSumTest: XCTestCase {
    /**
     Example
     numbers=[2, 7, 11, 15], target=9
     
     return [0, 1]
     */
    func testTwoSum() {
        XCTAssert(LCTwoSum.twoSum([2, 7, 11, 15], target: 9) == [0, 1])
    }
}
