//
//  LCUniquePaths.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Unique Paths
// http://www.lintcode.com/en/problem/unique-paths/
class LCUniquePaths {
    /**
     * @param n, m: positive integer (1 <= n ,m <= 100)
     * @return an integer
     */
    class func uniquePaths(_ m: Int, n: Int) -> Int {
        if m == 0 || n == 0 {
            return 0
        }

        var sum = Array(repeating: Array(repeating: 0, count: n), count: m)

        for i in 0..<m {
            sum[i][0] = 1
        }

        for i in 0..<n {
            sum[0][i] = 1
        }

        for i in 1..<m {
            for j in 1..<n {
                sum[i][j] = sum[i - 1][j] + sum[i][j - 1]
            }
        }

        return sum[m - 1][n - 1]
    }
}
