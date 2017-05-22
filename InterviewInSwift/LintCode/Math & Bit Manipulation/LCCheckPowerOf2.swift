//
//  LCCheckPowerOf2.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 28/06/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

// O(1) Check Power of 2
// http://www.lintcode.com/en/problem/o1-check-power-of-2/
class LCCheckPowerOf2 {
    /*
     * @param n: An integer
     * @return: True or false
     */
    class func checkPowerOf2(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        return n & (n - 1) == 0
    }
}
