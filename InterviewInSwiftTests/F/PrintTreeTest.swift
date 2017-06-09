import XCTest
@testable import InterviewInSwift

class FBPrintTreeTest: XCTestCase {
    
    func testPrintTree() {
        let root = TreeNode<String>()
        root.value = "A"
        let left = TreeNode<String>()
        left.value = "B"
        let right = TreeNode<String>()
        right.value = "C"
        root.left = left
        left.right = right
        
        let result = PrintTree.printTree(root)
        
        XCTAssert(result == "A\nB\nC")
    }
}
