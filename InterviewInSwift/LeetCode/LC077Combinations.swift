//
//  LC077Combinations.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 22/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 77. Combinations
 https://leetcode.com/problems/combinations/
 
 Given two integers n and k, return all possible combinations of k numbers out of 1 ... n.
 
 For example,
 If n = 4 and k = 2, a solution is:
 
 [
 [2,4],
 [3,4],
 [2,3],
 [1,2],
 [1,3],
 [1,4],
 ]
 */
struct LC077Combinations {
    static func combine(_ n: Int, k: Int) -> [[Int]] {
        var queue: [[Int]] = []
        var summary: [[Int]] = []
        for i in 1...n {
            var list: [Int] = []
            list.append(i)
            queue.append(list)
        }
        while queue.isEmpty == false {
            let list = queue.removeFirst()
            if list.count == k {
                summary.append(list)
            } else {
                if list.last! + 1 <= n {
                    for i in list.last! + 1...n {
                        var nextList: [Int] = [Int](list)
                        nextList.append(i)
                        queue.append(nextList)
                    }
                }
            }
        }
        return summary
    }
    static func combineRecursionHelper(_ res: inout [[Int]], tmp: inout [Int], start: Int, num: Int, n: Int, k: Int) {
        if num == k {
            res.append(tmp)
            return
        }
        for i in start..<n {
            tmp.append(i + 1)
            combineRecursionHelper(&res, tmp: &tmp, start: i+1, num: num+1, n: n, k: k)
            let _ = tmp.popLast()
        }
    }
}

// Recursion solution
extension LC077Combinations {
    static func combineRecursion(_ n: Int, k: Int) -> [[Int]] {
        var res: [[Int]] = []
        if n < k {
            return res
        }
        var tmp: [Int] = []
        combineRecursionHelper(&res, tmp: &tmp, start: 0, num: 0, n: n, k: k)
        return res
    }
}
