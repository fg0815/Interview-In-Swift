//
//  LCStrStrTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 26/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// If source = "source" and target = "target", return -1.
// If source = "abcdabcdefg" and target = "bcd", return 1.

class LCStrStrTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testStrStr() {
        let source1 = "source"
        let target1 = "target"
        XCTAssertTrue(LCStrStr.strStr(source1, target: target1) == -1)

        let source2 = "abcdabcdefg"
        let target2 = "bcd"
        XCTAssertTrue(LCStrStr.strStr(source2, target: target2) == 1)
    }



}
