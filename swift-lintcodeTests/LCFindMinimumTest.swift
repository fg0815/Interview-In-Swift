//
//  LCFindMinimumTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest


class LCFindMinimumTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // Given [4, 5, 6, 7, 0, 1, 2] return 0
    func findMin() {
        XCTAssertTrue(LCFindMinimum.findMin([4, 5, 6, 7, 0, 1, 2]) == 0)
    }
}
