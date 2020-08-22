//
//  Basic.swift
//  Torn Info
//
//  Created by Wannes De Craene on 19/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Basic : Codable {
    var level: Int
    var gender: String
    var player_id: Int
    var name: String
    var status: TornStatus
    
    init(level: Int, gender: String, player_id: Int, name: String, status: TornStatus) {
        self.level = level
        self.gender = gender
        self.player_id = player_id
        self.name = name
        self.status = status
    }
}



