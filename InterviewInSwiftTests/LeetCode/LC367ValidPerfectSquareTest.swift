//
//  LC367ValidPerfectSquareTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC367ValidPerfectSquareTest: XCTestCase {
    func testIsPerfectSquare() {
        XCTAssertTrue(LC367ValidPerfectSquare.isPerfectSquare(16))
        XCTAssertTrue(LC367ValidPerfectSquare.isPerfectSquare(100))
        XCTAssertFalse(LC367ValidPerfectSquare.isPerfectSquare(14))
    }
}
