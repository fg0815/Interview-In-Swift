//
//  LC205IsomorphicStringsTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 15/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LC205IsomorphicStringsTest: XCTestCase {
    /**
     For example,
     Given "egg", "add", return true.
     
     Given "foo", "bar", return false.
     
     Given "paper", "title", return true.
     */
    func testIsIsomorphic() {
        XCTAssertTrue(LC205IsomorphicStrings.isIsomorphic("egg", target: "add"))
        XCTAssertFalse(LC205IsomorphicStrings.isIsomorphic("foo", target: "bar"))
        XCTAssertTrue(LC205IsomorphicStrings.isIsomorphic("paper", target: "title"))
    }

}
