//
//  LC009PalindromeNumberTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 19/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC009PalindromeNumberTest: XCTestCase {
    func testIsPalindrome_001() {
        let input: Int = -121
        XCTAssertFalse(LC009PalindromeNumber.isPalindrome(input))
    }
    
    func testIsPalindrome_002() {
        let input: Int = 121
        XCTAssertTrue(LC009PalindromeNumber.isPalindrome(input))
    }
    
    func testIsPalindrome_003() {
        let input: Int = 0
        XCTAssertTrue(LC009PalindromeNumber.isPalindrome(input))
    }
    
    func testIsPalindrome_004() {
        let input: Int = Int.max
        XCTAssertFalse(LC009PalindromeNumber.isPalindrome(input))
    }
    func testIsPalindrome_005() {
        let input: Int = Int.min
        XCTAssertFalse(LC009PalindromeNumber.isPalindrome(input))
    }
    func testIsPalindrome_006() {
        let input: Int = 1999999999999999999
        XCTAssertFalse(LC009PalindromeNumber.isPalindrome(input))
    }
    func testIsPalindrome_007() {
        let input: Int = -1999999999999999999
        XCTAssertFalse(LC009PalindromeNumber.isPalindrome(input))
    }

}
