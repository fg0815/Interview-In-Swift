//
//  LCSearch2DMatrixTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

/* Consider the following matrix:
    [
        [1, 3, 5, 7],
        [10, 11, 16, 20],
        [23, 30, 34, 50]
    ]
    Given target = 3, return true.
 */
class LCSearch2DMatrixTest: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    func testSearchMatrix() {
        let matrix = [
            [1, 3, 5, 7],
            [10, 11, 16, 20],
            [23, 30, 34, 50]
        ]
        
        XCTAssertTrue(LCSearch2DMatrix.searchMatrix(matrix, target: 3))
    }
}
