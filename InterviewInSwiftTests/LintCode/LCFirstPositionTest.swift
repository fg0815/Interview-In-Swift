//
//  LCFirstPositionTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// If the array is [1, 2, 3, 3, 4, 5, 10], for given target 3, return 2.
class LCFirstPositionTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testBinarySearch() {
        let sortedArray = [1, 2, 3, 3, 4, 5, 10]

        XCTAssertTrue(LCFirstPosition.binarySearch(sortedArray, target: 3) == 2)
    }

}
