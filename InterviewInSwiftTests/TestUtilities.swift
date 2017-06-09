//
//  TestUtilities.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 9/6/17.
//  Copyright © 2017 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

// add override for comparing array of arrays to fix the equatable change in Swift 3
func ==<Element : Equatable> (lhs: [[Element]], rhs: [[Element]]) -> Bool {
    return lhs.elementsEqual(rhs, by: ==)
}
