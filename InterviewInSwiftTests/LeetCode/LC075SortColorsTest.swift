//
//  LC075SortColorsTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 22/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC075SortColorsTest: XCTestCase {
    func testSortColor() {
        var input: [Int] = [2, 1, 1, 2, 2, 1, 0, 0, 1, 2]
        let expected: [Int] = [0, 0, 1, 1, 1, 1, 2, 2, 2, 2]
        LC075SortColors.sortColors(&input)
        XCTAssert(input == expected)
    }
}
