//
//  LCPermutations.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 8/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Permutations
// http://www.lintcode.com/en/problem/permutations/
class LCPermutations {
    /**
     * @param nums: A list of integers.
     * @return: A list of permutations.
     */
    func permute(num: [Int]) -> [[Int]] {
        var rst: [[Int]] = []

        if num.count == 0 {
            return rst
        }

        var list: [Int] = []
        helper(&rst, list: &list, num: num)
        return rst
    }

    private func helper(inout rst: [[Int]], inout list: [Int], num: [Int]) {
        if list.count == num.count {
            rst.append(list)
            return
        }

        for i in 0 ..< num.count {
            if list.contains(num[i]) {
                continue
            }

            list.append(num[i])
            helper(&rst, list: &list, num: num)
            list.removeAtIndex(list.count - 1)
        }
    }
}

// Non-Recursion
extension LCPermutations {
    class func permute(nums: [Int]) -> [[Int]] {
        var permutations: [[Int]] = []

        if (nums.count == 0) {
            return permutations
        }

        let n = nums.count
        var stack: [Int] = []

        stack.append(-1)

        while stack.count != 0 {
            let last = stack[stack.count - 1]
            stack.removeAtIndex(stack.count - 1)

            // increase the last number
            var next = -1

            for i in last + 1 ..< n {
                if !stack.contains(i) {
                    next = i
                    break
                }
            }

            if next == -1 {
                continue
            }

            // generate the next permutation
            stack.append(next)

            for i in 0 ..< n {
                if !stack.contains(i) {
                    stack.append(i)
                }
            }

            // copy to permutations set
            var permutation: [Int] = []

            for i in 0 ..< n {
                permutation.append(nums[stack[i]])
            }

            permutations.append(permutation)
        }

        return permutations
    }
}
