//
//  LC008StringToIntegerAtoiTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 19/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC008StringToIntegerAtoiTest: XCTestCase {
    func testAtoi_001() {
        let input: String = "123"
        let expected: Int = 123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_002() {
        let input: String = "     123"
        let expected: Int = 123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_003() {
        let input: String = "    +123"
        let expected: Int = 123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_004() {
        let input: String = "-123"
        let expected: Int = -123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_005() {
        let input: String = "    -123"
        let expected: Int = -123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_006() {
        let input: String = String(Int.max)
        let expected: Int = 9223372036854775807
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_007() {
        let input: String = "  9223372036854775808"
        let expected: Int = 9223372036854775807
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_008() {
        let input: String = "  9223372036854775806"
        let expected: Int = 9223372036854775806
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_009() {
        let input: String = String(Int.min)
        let expected: Int = -9223372036854775808
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_010() {
        let input: String = " -9223372036854775809"
        let expected: Int = -9223372036854775808
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_011() {
        let input: String = " -9223372036854775806"
        let expected: Int = -9223372036854775806
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_012() {
        let input: String = "   123-   "
        let expected: Int = 123
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_013() {
        let input: String = "  -9223372036854775808-"
        let expected: Int = -9223372036854775808
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
    func testAtoi_014() {
        let input: String = "  -9223372036854775807-"
        let expected: Int = -9223372036854775807
        XCTAssert(LC008StringToIntegerAtoi.atoi(input) == expected)
    }
}
