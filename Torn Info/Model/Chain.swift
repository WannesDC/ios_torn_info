//
//  Chain.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Chain : Codable {
    
    var current: Int
    var maximum: Int
    var timeout: Int
    var modifier: Int
    var cooldown: Int
    
    init(current: Int, maximum: Int, timeout: Int, modifier: Int, cooldown: Int) {
        self.current = current
        self.maximum = maximum
        self.timeout = timeout
        self.modifier = modifier
        self.cooldown = cooldown
    }
    
}
