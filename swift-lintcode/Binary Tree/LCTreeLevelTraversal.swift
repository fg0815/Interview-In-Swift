//
//  LCTreeLevelTraversal.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 5/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// Binary Tree Level Order Traversal
// http://www.lintcode.com/en/problem/binary-tree-level-order-traversal/

enum TraversalType {
    case bfs
    case dfs
}

class LCTreeLevelTraversal: NSObject {
    class func levelOrder(root: LCTreeNode, methods: TraversalType) -> [[Int]] {
        switch methods {
        case TraversalType.bfs:
            return LCTreeLevelTraversal.levelOrderByBFS(root)
        case TraversalType.dfs:
            let treeLevelTraversal = LCTreeLevelTraversal()
            return treeLevelTraversal.levelOrderByDFS(root)
        }
    }
    
}

extension LCTreeLevelTraversal {
    class func levelOrderByBFS(root: LCTreeNode?) -> [[Int]] {
        var result = [[Int]]()
        
        if let node = root {
            let queue = LCQueue<LCTreeNode>()
            queue.enqueue(node)
            
            while !queue.isEmpty() {
                var level: [Int] = []
                let size = queue.size()
                for _ in 0 ..< size {
                    let head = queue.dequeue()
                    level.append(head!.val)
                    
                    if let left = head!.left {
                        queue.enqueue(left)
                    }
                    
                    if let right = head!.right {
                        queue.enqueue(right)
                    }
                }
                
                result.append(level)
                
            }
            
        }
        
        return result
    }
}

extension LCTreeLevelTraversal {
    func levelOrderByDFS(root :LCTreeNode?) -> [[Int]] {
        var results = [[Int]]()
        
        if let node = root {
            var maxLevel = 0
            while true {
                let level: [Int] = []
                let newLevel = dfs(node, level: level, curtLevel: 0, maxLevel: maxLevel)
                if newLevel.count == 0 {
                    break
                }
                
                results.append(newLevel)
                maxLevel += 1
            }
        }
        
        return results
    }
    
    private func dfs(root: LCTreeNode?, level: [Int], curtLevel: Int, maxLevel: Int) -> [Int] {
        if curtLevel > maxLevel {
            return level
        }
        
        if let node = root {
            var newLevel = level
            if curtLevel == maxLevel {
                newLevel.append(node.val)
                return newLevel
            }
            
            newLevel += dfs(node.left, level: level, curtLevel: curtLevel + 1, maxLevel: maxLevel)
            newLevel += dfs(node.right, level: level, curtLevel: curtLevel + 1, maxLevel: maxLevel)
            
            return newLevel
        }
        
        return level
    }
}
