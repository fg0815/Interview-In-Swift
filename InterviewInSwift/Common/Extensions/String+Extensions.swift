//
//  String+Extensions.swift
//  InterviewInSwift
//
//  Created by Jingwei Huang on 15/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

extension String {
    func stringAtIndex(_ index: Int) -> String {
        return String(charAtIndex(index))
    }
    
    func unicodeAtIndex(_ index: Int) -> UInt32 {
        return charAtIndex(index).unicodeScalarCodePoint()
    }
    
    subscript (index: Int) -> String {
        let index = self.characters.index(self.startIndex, offsetBy: index)
        let character = self.characters[index]
        
        return String(character)
    }
    
    func charAtIndex(_ index: Int) -> Character {
        let index = self.characters.index(self.startIndex, offsetBy: index)
        let character = self.characters[index]
        
        return character
    }

}
