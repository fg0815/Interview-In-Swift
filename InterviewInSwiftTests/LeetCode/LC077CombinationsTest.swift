//
//  LC077CombinationsTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 22/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC077CombinationsTest: XCTestCase {
    func testCombine_001() {
        let input: [Int] = [4, 2]
        let expected: [[Int]] = [
            [2,4],
            [3,4],
            [2,3],
            [1,2],
            [1,3],
            [1,4],
            ]
        comparehelper(LC077Combinations.combine(input[0], k: input[1]), inputB: expected)
        comparehelper(LC077Combinations.combineRecursion(input[0], k: input[1]), inputB: expected)
    }
    
    func testCombine_002() {
        let input: [Int] = [1, 1]
        let expected: [[Int]] = [
            [1]
            ]
        XCTAssert(LC077Combinations.combine(input[0], k: input[1]) == expected)
        XCTAssert(LC077Combinations.combineRecursion(input[0], k: input[1]) == expected)
    }
    
    func testCombine_003() {
        let input: [Int] = [2, 1]
        let expected: [[Int]] = [
            [1],
            [2]
            ]
        XCTAssert(LC077Combinations.combine(input[0], k: input[1]) == expected)
        XCTAssert(LC077Combinations.combineRecursion(input[0], k: input[1]) == expected)
    }
    
    func comparehelper(inputA: [[Int]], inputB: [[Int]]) -> Bool {
        if inputA.count != inputB.count {
            return false
        }
        
        for array in inputA {
            XCTAssertTrue(inputB.contains {
                $0 == array
            })

        }
        
        return true
    }
    
    
}
