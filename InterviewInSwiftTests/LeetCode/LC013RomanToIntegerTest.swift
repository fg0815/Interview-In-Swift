//
//  LC013RomanToIntegerTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 20/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC013RomanToIntegerTest: XCTestCase {
    func testRomanToInt_001() {
        let input: String = "I"
        let expected: Int = 1
        XCTAssert(LC013RomanToInteger.romanToInt(input) == expected)
    }
    func testRomanToInt_002() {
        let input: String = "MMMCMXCIX"
        let expected: Int = 3999
        XCTAssert(LC013RomanToInteger.romanToInt(input) == expected)
    }
}
