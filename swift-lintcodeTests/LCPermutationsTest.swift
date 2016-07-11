//
//  LCPermutationsTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 9/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCPermutationsTest: XCTestCase {
    /**
     *     For nums = [1,2,3], the permutations are:
     *
     *     [
     *      [1,2,3],
     *      [1,3,2],
     *      [2,1,3],
     *      [2,3,1],
     *      [3,1,2],
     *      [3,2,1]
     *     ]
     *
     */
    
    static let test1 = [1,2,3]
    static let expectedResult1 = [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
    
    func testPermuteNonRecursion() {
        XCTAssertTrue(LCPermutations.permute(LCPermutationsTest.test1) == LCPermutationsTest.expectedResult1)
    }
    
    func testPermute() {
        let permutations = LCPermutations()
        XCTAssertTrue(permutations.permute(LCPermutationsTest.test1) == LCPermutationsTest.expectedResult1)
    }

}

