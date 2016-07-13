//
//  LCSearch2DMatrix.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

//http://www.lintcode.com/en/problem/search-a-2d-matrix/
class LCSearch2DMatrix: NSObject {
    /**
     * @param matrix, a list of lists of integers
     * @param target, an integer
     * @return a boolean, indicate whether matrix contains target
     */
    class func searchMatrix(matrix: [[Int]], target: Int) -> Bool {
        if (matrix.count == 0) {
            return false
        }

        if (matrix[0].count == 0) {
            return false
        }

        // from bottom left to top right
        let n = matrix.count
        let m = matrix[0].count
        var x = n - 1
        var y = 0
        var count = 0

        while x >= 0 && y < m {
            if matrix[x][y] < target {
                y += 1
            } else if matrix[x][y] > target {
                x -= 1
            } else {
                count += 1
                x -= 1
                y += 1
            }
        }

        return count > 0
    }
}
