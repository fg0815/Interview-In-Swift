//
//  LCReverseIntegerTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 17/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCReverseIntegerTest: XCTestCase {
    func testReverseInteger() {
        XCTAssert(LCReverseInteger.reverseInteger(123) == 321)
        XCTAssert(LCReverseInteger.reverseInteger(-123) == -321)
        XCTAssert(LCReverseInteger.reverseInteger(-1) == -1)
        XCTAssert(LCReverseInteger.reverseInteger(0) == 0)
    }
}
