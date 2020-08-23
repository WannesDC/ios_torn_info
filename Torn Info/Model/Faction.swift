//
//  Faction.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation


final class Faction: Codable {
    
    var position: String
    var factionID: Int
    var daysInFaction: Int
    var factionName: String
    
    enum CodingKeys: String, CodingKey {
        case position
        case factionID = "faction_id"
        case daysInFaction = "days_in_faction"
        case factionName = "faction_name"
    }
    
    init(position: String, factionID: Int, daysInFaction: Int, factionName: String) {
        self.position = position
        self.factionID = factionID
        self.daysInFaction = daysInFaction
        self.factionName = factionName
    }
}
