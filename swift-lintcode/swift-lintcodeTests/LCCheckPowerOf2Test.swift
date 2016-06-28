//
//  LCCheckPowerOf2Test.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCCheckPowerOf2Test: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    // For n=4, return true;
    // For n=5, return false;
    func testCheckPowerOf2() {
        XCTAssertTrue(LCCheckPowerOf2.checkPowerOf2(4))
        XCTAssertFalse(LCCheckPowerOf2.checkPowerOf2(5))
    }
    
}
