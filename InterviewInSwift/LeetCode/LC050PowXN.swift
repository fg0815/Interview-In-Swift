//
//  LC050PowXN.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 18/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

/**
 50. Pow(x, n)
 https://leetcode.com/problems/powx-n/
 
 Level: medium
 
 Implement pow(x, n).
 
 */
struct LC050PowXN {
    static func myPow(_ x: Double, n: Int) -> Double {
        var x = x
        var n = n
        
        if n == 0 {
            return 1
        }
        if n < 0 {
            n = -n
            x = 1/x
        }
        return n % 2 == 0 ? myPow(x*x, n: n/2) : x * myPow(x*x, n: n/2)
    }
}
