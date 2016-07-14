//
//  LC367ValidPerfectSquare.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Valid Perfect Square
// https://leetcode.com/problems/valid-perfect-square/
class LC367ValidPerfectSquare: NSObject {
    class func isPerfectSquare(num: Int) -> Bool {
        var start = 1
        var end = num >> 1 + 1
        
        while start <= end {
            let middle = start + (end - start) >> 1
            let square = middle * middle
            
            if square == num {
                return true
            } else if square > num {
                end = middle - 1
            } else {
                start = middle + 1
            }
        }
        
        return false
    }
}
