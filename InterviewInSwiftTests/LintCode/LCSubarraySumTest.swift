//
//  LCSubarraySumTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// Given [-3, 1, 2, -3, 4], return [0, 2] or [1, 3].
class LCSubarraySumTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSubarraySum() {
        let result = LCSubarraySum.subarraySum([-3, 1, 2, -3, 4])
        XCTAssertTrue(result == [0, 2] || result == [1, 3])
    }
}
