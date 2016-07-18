//
//  LC058LengthOfLastWordTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC058LengthOfLastWordTest: XCTestCase {
    func testLengthOfLastWord() {
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("Hello World") == 5)
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("") == 0)
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("  Hello  ") == 5)
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("  Hello     a") == 1)
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("  asd   a baddsd asddddf asdsdfe wedr asdfddas dfae   ") == 4)
        XCTAssert(LC058LengthOfLastWord.lengthOfLastWord("abcde") == 5)
        
    }

}
