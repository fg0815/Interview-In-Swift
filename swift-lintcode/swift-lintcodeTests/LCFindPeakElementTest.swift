//
//  LCFindPeakElementTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCFindPeakElementTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Given [1, 2, 1, 3, 4, 5, 7, 6]
    // Return index 1 (which is number 2) or 6 (which is number 7)
    func testFindPeak() {
        let nums = [1, 2, 1, 3, 4, 5, 7, 6]
        XCTAssertTrue(LCFindPeakElement.findPeak(nums) == 1)
    }
}
