
// Given the root node of a tree, print out the tree by levels
// Exmaple:
//   A
//  / \
// B   C
// printed out as
// A
// BC

import Foundation

class PrintTree {
    static func printTree(_ tree: TreeNode<String>) -> String{
        let queue = LCQueue<(TreeNode<String>, Int)>()
        queue.enqueue((tree, 0))
        var currentLevel = 0
        var result = ""
        
        while !queue.isEmpty() {
            let (node, level) = queue.dequeue()!
            if level > currentLevel {
                result.append("\n")
                currentLevel = level
            }
            if let value = node.value {
                result.append(value)
            }
            
            if let left = node.left {
                queue.enqueue((left, level + 1))
            }
            
            if let right = node.right {
                queue.enqueue((right, level + 1))
            }
        }
        
        return result
    }
}
