//
//  LC022GenerateParenthesesTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 21/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC022GenerateParenthesesTest: XCTestCase {
    func testGenerateParenthesis_001() {
        let input: Int = 1
        let expected: [String] = ["()"]
        XCTAssert(expected == LC022GenerateParentheses.generateParenthesis(input))
    }
    
    func testGenerateParenthesis_002() {
        let input: Int = 0
        let expected: [String] = [""]
        XCTAssert(expected == LC022GenerateParentheses.generateParenthesis(input))
    }
    
    func testGenerateParenthesis_003() {
        let input: Int = 3
        let expected: [String] = ["((()))", "(()())", "(())()", "()(())", "()()()"]
        XCTAssert(compareUnordered(expected, array2: LC022GenerateParentheses.generateParenthesis(input)))
    }
    
    func compareUnordered(_ array1: [String], array2: [String]) -> Bool {
        if array1.count != array2.count {
            return false
        }
        
        let set1 = Set<String>(array1)
        let set2 = Set<String>(array2)
        
        return set1 == set2
    }

}
