//
//  LCRemoveDuplicatesTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCRemoveDuplicatesTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // Given input array A = [1,1,2],
    // Your function should return length = 2, and A is now [1,2].
    func testRemoveDuplicates() {
        XCTAssertTrue(LCRemoveDuplicates.removeDuplicates([1, 1,2]) == 2)
    }
}
