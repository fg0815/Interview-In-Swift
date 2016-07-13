//
//  LCBSTSearchRangeTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 7/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCBSTSearchRangeTest: XCTestCase {
    /**
     *   If k1 = 10 and k2 = 22, then your function should return [12, 20, 22].
     *
     *          20
     *         /  \
     *        8   22
     *       / \
     *      4   12
     */

    func testSearchRange() {
        let searchRange = LCBSTSearchRange()
        let testCase1 = TestCase1()
        let result1 = searchRange.searchRange(testCase1.tree, k1: testCase1.k1, k2: testCase1.k2)
        XCTAssertTrue(result1 == testCase1.expectedTreeResult)
    }


}

class TestCase1: NSObject {
    var tree: LCTreeNode {
        get {
            return LCTreeNodeHelper.createTreeNode("20,8,22,4,12,#,#")
        }
    }

    var expectedTreeResult: [Int] {
        get {
            return [12, 20, 22]
        }
    }

    var k1 = 10
    var k2 = 22
}
