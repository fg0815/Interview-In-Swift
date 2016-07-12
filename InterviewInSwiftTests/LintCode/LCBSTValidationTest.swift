//
//  LCBSTValidationTest.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 5/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest

class LCBSTValidationTest: XCTestCase {
    /**
     *      An example:
     *
     *          2
     *         / \
     *        1   4
     *           / \
     *          3   5
     *      The above binary tree is serialized as {2,1,4,#,#,3,5} (in level order).
     */
    func testIsValidBST() {
        let tree1 = LCTreeNodeHelper.createTreeNode("2,1,4,#,#,3,5")
        let tree2 = LCTreeNodeHelper.createTreeNode("2,1,4,#,#,5,3")
        let validation = LCBSTValidation.init()
        XCTAssertTrue(validation.isValidBST(tree1))
        XCTAssertFalse(validation.isValidBST(tree2))
    }

}
