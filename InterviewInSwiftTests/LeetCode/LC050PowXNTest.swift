//
//  LC050PowXNTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC050PowXNTest: XCTestCase {
    
    static let allowanceError = 0.01
    
    func testMyPow_001() {
        XCTAssert((LC050PowXN.myPow(987.654, n: 4) - pow(987.654, 4)) < LC050PowXNTest.allowanceError)
    }
    
    func testMyPow_002() {
        XCTAssert((LC050PowXN.myPow(987.654, n: 0) - pow(987.654, 0)) < LC050PowXNTest.allowanceError)
    }
    
    func testMyPow_003() {
        XCTAssert((LC050PowXN.myPow(-987.654, n: 3) - pow(-987.654, 3)) < LC050PowXNTest.allowanceError)

    }
}
