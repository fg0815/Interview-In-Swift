//
//  LCCompareStringsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 26/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// For A = "ABCD", B = "ACD", return true.
// For A = "ABCD", B = "AABC", return false.
class LCCompareStringsTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testCompareStrings() {
        let A1 = "ABCD"
        let B1 = "ACD"
        XCTAssertTrue(LCCompareStrings.compareStrings(A1, B: B1))

        let A2 = "ABCD"
        let B2 = "AABC"
        XCTAssertFalse(LCCompareStrings.compareStrings(A2, B: B2))
    }

}
