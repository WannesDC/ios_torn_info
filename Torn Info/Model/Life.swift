//
//  Life.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Life: Codable {
    var current: Int
    var maximum: Int
    var increment: Int
    var interval: Int
    var ticktime: Int
    var fulltime: Int
    
    init(current: Int, maximum: Int, increment: Int, interval: Int, ticktime: Int, fulltime: Int) {
        self.current = current
        self.maximum = maximum
        self.increment = increment
        self.interval = interval
        self.ticktime = ticktime
        self.fulltime = fulltime
    }
    
    
}
