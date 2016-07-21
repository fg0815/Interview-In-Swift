//
//  LCFlipBits.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// Flip bits
// http://www.lintcode.com/en/problem/flip-bits/

class LCFlipBits {
    /**
     *@param a, b: Two integer
     *return: An integer
     */
    class func bitSwapRequired(a: Int, b: Int) -> Int {
        var count = 0

        var c = a ^ b
        while c != 0 {
            count += c & 1
            c = c >> 1
        }

        return count
    }
}
