//
//  LCFlipBitsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCFlipBitsTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // Given n = 31 (11111), m = 14 (01110), return 2.
    func testBitSwapRequired() {
        XCTAssertTrue(LCFlipBits.bitSwapRequired(31, b: 14) == 2)
    }

}
