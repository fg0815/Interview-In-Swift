//
//  LCBSTSearchRange.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 6/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import UIKit

// Search Range in Binary Search Tree
// http://www.lintcode.com/en/problem/search-range-in-binary-search-tree/
class LCBSTSearchRange: NSObject {
    fileprivate var result: [Int]!

    /**
     * @param root: The root of the binary search tree.
     * @param k1 and k2: range k1 to k2.
     * @return: Return all keys that k1<=key<=k2 in increasing order.
     */
    func searchRange(_ root: LCTreeNode, k1: Int, k2: Int) -> [Int] {
        result = []
        helper(root, k1: k1, k2: k2)
        return result
    }

    fileprivate func helper(_ root: LCTreeNode?, k1: Int, k2: Int) {
        if let node = root {
            if node.val > k1 {
                helper(node.left, k1: k1, k2: k2)
            }

            if node.val >= k1 && node.val <= k2 {
                result.append(node.val)
            }

            if node.val < k2 {
                helper(node.right, k1: k1, k2: k2)
            }
        }
    }
}
