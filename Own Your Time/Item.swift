//
//  Item.swift
//  Own Your Time
//
//  Created by VC on 2/4/2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
