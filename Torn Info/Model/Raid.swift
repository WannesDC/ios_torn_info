//
//  Raid.swift
//  Torn Info
//
//  Created by Wannes De Craene on 25/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Raid :Codable {
    init(assaultingFaction: Int, defendingFaction: Int, assaultingScore: Float, defendingScore: Float, started: String) {
        self.assaultingFaction = assaultingFaction
        self.defendingFaction = defendingFaction
        self.assaultingScore = assaultingScore
        self.defendingScore = defendingScore
        self.started = started
    }
    
    var assaultingFaction: Int
    var defendingFaction: Int
    var assaultingScore: Float
    var defendingScore: Float
    var started: String
    
    enum CodingKeys: String, CodingKey {
        case assaultingFaction = "assaulting_faction"
        case defendingFaction = "defending_faction"
        case assaultingScore = "assaulting_score"
        case defendingScore = "defending_score"
        case started
    }
    
    func convertTimeStamp() -> String {
        guard started != "" else {
            return "N/A"
        }
        
        let converter = DateFormatter()
        converter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let date = converter.date(from: started)
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.medium
        dateFormatter.dateStyle = DateFormatter.Style.medium
        let formattedDate = dateFormatter.string(from: date! as Date)
        
        return formattedDate
    }
}
