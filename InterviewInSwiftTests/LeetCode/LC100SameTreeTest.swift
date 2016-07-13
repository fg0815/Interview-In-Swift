//
//  LC100SameTreeTest.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 12/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import XCTest


class LC100SameTreeTest: XCTestCase {
    /**
     *       1
     *      / \
     *     2   3
     *    / \
     *   4   5
     */
    static let tree1: LCTreeNode? = LCTreeNodeHelper.createTreeNode("1,2,3,4,5,#,#")
    static let tree2: LCTreeNode? = LCTreeNodeHelper.createTreeNode("1,2,3,4,5,6,#")
    static let tree3: LCTreeNode? = LCTreeNodeHelper.createTreeNode("1,2,3,4,5,#,#")

    func testIsSame() {
        XCTAssert(case1().expectedResult == LC100SameTree.isSameTree(case1().inputA, node2: case1().inputB))
        XCTAssert(case2().expectedResult == LC100SameTree.isSameTree(case2().inputA, node2: case2().inputB))
    }

}

extension LC100SameTreeTest {
    func case1() -> LC100SameTreeTestCaseModel {
        return LC100SameTreeTestCaseModel.init(inputA: LC100SameTreeTest.tree1, inputB: LC100SameTreeTest.tree3, expectedResult: true)
    }

    func case2() -> LC100SameTreeTestCaseModel {
        return LC100SameTreeTestCaseModel.init(inputA: LC100SameTreeTest.tree1, inputB: LC100SameTreeTest.tree2, expectedResult: false)
    }

}

class LC100SameTreeTestCaseModel: NSObject {
    var inputA: LCTreeNode?
    var inputB: LCTreeNode?
    var expectedResult: Bool

    init(inputA: LCTreeNode?, inputB: LCTreeNode?, expectedResult: Bool) {
        self.inputA = inputA
        self.inputB = inputB
        self.expectedResult = expectedResult
    }
}
