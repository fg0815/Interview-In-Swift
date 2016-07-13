//
//  LCUniquePathsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCUniquePathsTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    // 3, 7 -> 28
    // 8, 8 -> 3432
    func testUniquePaths() {
        XCTAssertTrue(LCUniquePaths.uniquePaths(3, n: 7) == 28)
        XCTAssertTrue(LCUniquePaths.uniquePaths(8, n: 8) == 3432)
    }

}
