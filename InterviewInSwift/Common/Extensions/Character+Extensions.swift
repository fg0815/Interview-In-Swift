//
//  Character+Extensions.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 19/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

extension Character {
    func unicodeScalarCodePoint() -> UInt32 {
        let characterString = String(self)
        let scalars = characterString.unicodeScalars
        
        return scalars[scalars.startIndex].value
    }
}

