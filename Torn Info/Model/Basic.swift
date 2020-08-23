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
    var playerID: Int
    var name: String
    var status: TornStatus
    
    
    enum CodingKeys: String, CodingKey {
        case level
        case gender
        case playerID = "player_id"
        case name
        case status
    }
    
    init(level: Int, gender: String, playerID: Int, name: String, status: TornStatus) {
        self.level = level
        self.gender = gender
        self.playerID = playerID
        self.name = name
        self.status = status
    }
}



