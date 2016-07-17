//
//  LCPlusOneTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCPlusOneTest: XCTestCase {
    /**
     Given [1,2,3] which represents 123, return [1,2,4].
     Given [9,9,9] which represents 999, return [1,0,0,0].
     */
    func testPlusOne() {
        XCTAssert(LCPlusOne.plusOne([1,2,3]) == [1,2,4])
        XCTAssert(LCPlusOne.plusOne([9,9,9]) == [1,0,0,0])
    }

}
