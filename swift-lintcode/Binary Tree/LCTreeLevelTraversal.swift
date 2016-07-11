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
    case bfsWithTwoQueues
    case bfsQueueWithDummyNode
}

class LCTreeLevelTraversal: NSObject {
    static let ErrorState = [[-1]]
    
    class func levelOrder(root: LCTreeNode, methods: TraversalType) -> [[Int]] {
        switch methods {
        case TraversalType.bfs:
            return LCTreeLevelTraversal.levelOrderByBFS(root)
        case TraversalType.dfs:
            let treeLevelTraversal = LCTreeLevelTraversal()
            return treeLevelTraversal.levelOrderByDFS(root)
        case TraversalType.bfsWithTwoQueues:
            return LCTreeLevelTraversal.levelOrderByBFSWithTwoQueues(root)
        case TraversalType.bfsQueueWithDummyNode:
            return LCTreeLevelTraversal.levelOrderByBFSQueueWithDummyNode(root)
        }
    }
    
}

// BFS solution
extension LCTreeLevelTraversal {
    class func levelOrderByBFS(root: LCTreeNode?) -> [[Int]] {
        var result = [[Int]]()
        
        guard let node = root else {
            return LCTreeLevelTraversal.ErrorState
        }
        
        let queue = LCQueue<LCTreeNode>()
        queue.enqueue(node)
        
        while !queue.isEmpty() {
            var level: [Int] = []
            let size = queue.size()
            for _ in 0 ..< size {
                
                guard let head = queue.dequeue() else {
                    preconditionFailure("Head is required")
                }
                
                level.append(head.val)
                
                if let left = head.left {
                    queue.enqueue(left)
                }
                
                if let right = head.right {
                    queue.enqueue(right)
                }
            }
            result.append(level)
        }
        return result
    }
}

// DFS solution
extension LCTreeLevelTraversal {
    func levelOrderByDFS(root :LCTreeNode?) -> [[Int]] {
        var results = [[Int]]()
        
        guard let node = root else {
            return LCTreeLevelTraversal.ErrorState
        }
        
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
        return results
    }
    
    private func dfs(root: LCTreeNode?, level: [Int], curtLevel: Int, maxLevel: Int) -> [Int] {
        if curtLevel > maxLevel {
            return level
        }
        
        guard let node = root else {
            return level
        }
        
        var newLevel = level
        if curtLevel == maxLevel {
            newLevel.append(node.val)
            return newLevel
        }
        
        newLevel += dfs(node.left, level: level, curtLevel: curtLevel + 1, maxLevel: maxLevel)
        newLevel += dfs(node.right, level: level, curtLevel: curtLevel + 1, maxLevel: maxLevel)
        
        return newLevel
        
    }
}

// BFS with two queues
extension LCTreeLevelTraversal {
    class func levelOrderByBFSWithTwoQueues(root: LCTreeNode?) -> [[Int]] {
        var results = [[Int]]()
        
        guard let node = root else {
            return LCTreeLevelTraversal.ErrorState
        }
        
        var q1: [LCTreeNode] = []
        var q2: [LCTreeNode] = []
        
        q1.append(node)
        
        while q1.count != 0 {
            var level: [Int] = []
            q2.removeAll()
            
            for currentNode in q1 {
                level.append(currentNode.val)
                
                if let left = currentNode.left {
                    q2.append(left)
                }
                
                if let right = currentNode.right {
                    q2.append(right)
                }
            }
            
            // swap q1 and q2
            let temp = q1
            q1 = q2
            q2 = temp
            
            // add to result
            results.append(level)
        }
        return results
    }
}

// BFS, queue with dummy node
extension LCTreeLevelTraversal {
    class func levelOrderByBFSQueueWithDummyNode(root: LCTreeNode?) -> [[Int]] {
        var results = [[Int]]()
        
        guard let node = root else {
            return LCTreeLevelTraversal.ErrorState
        }
        
        let queue = LCQueue<LCTreeNode>()
        queue.enqueue(node)
        queue.enqueue(nil) // dummy node
        
        var level: [Int] = []
        while !queue.isEmpty() {
            if let currentNode = queue.dequeue() {
                level.append(currentNode.val)
                
                if let left = currentNode.left {
                    queue.enqueue(left)
                }
                
                if let right = currentNode.right {
                    queue.enqueue(right)
                }
                
            } else {
                if level.count == 0 {
                    break
                }
                
                results.append(level)
                level = []
                queue.enqueue(nil)
            }
        }
        return results
    }
}


