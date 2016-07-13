//
//  LCQueueItem.swift
//  swift-lintcode
//
//  Created by Jingwei Huang on 5/07/2016.
//  Copyright © 2016 Core Apps Pty Ltd. All rights reserved.
//

import Foundation

class LCQueueItem<T> {
    let value: T?
    var next: LCQueueItem?

    init(newValue: T?) {
        self.value = newValue
    }
}
