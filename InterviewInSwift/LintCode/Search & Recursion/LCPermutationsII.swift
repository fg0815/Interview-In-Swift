//
//  LCPermutationsII.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 14/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Permutations II
// http://www.lintcode.com/en/problem/permutations-ii/
class LCPermutationsII: NSObject {
    private var result: [[Int]]
    private var list: [Int]
    private var visited: [Int]
    private var sortedNum: [Int]
    
    override init() {
        result = []
        list = []
        visited = []
        sortedNum = []
        super.init()
    }
    
    func permuteUnique(num: [Int]) -> [[Int]] {
        if num.count == 0 {
            return result
        }
        
        sortedNum = num.sort()
        visited = Array.init(count: num.count, repeatedValue: 0)
        
        helper()
        
        return result
    }
    
    private func helper() {
        if list.count == sortedNum.count {
            result.append(list)
            return
        }
        
        for i in 0 ..< sortedNum.count {
            if visited[i] == 1 || (i != 0 && sortedNum[i] == sortedNum[i - 1] && visited[i - 1] == 0) {
                continue
            }
            
            visited[i] = 1
            list.append(sortedNum[i])
            helper()
            list.removeAtIndex(list.count - 1)
            visited[i] = 0
        }
    }
}
