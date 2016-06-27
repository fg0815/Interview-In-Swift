//
//  LCRemoveElementTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 27/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

// Given an array [0,4,4,0,0,2,4,4], value=4
// return 4 and front four elements of the array is [0,0,0,2]
class LCRemoveElementTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testRemoveElement() {
        XCTAssertTrue(LCRemoveElement.removeElement([0,4,4,0,0,2,4,4], elem: 4) == 4)
    }

}
