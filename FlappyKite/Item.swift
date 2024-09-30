//
//  Item.swift
//  FlappyKite
//
//  Created by Mark Wolfe on 26/9/2024.
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
