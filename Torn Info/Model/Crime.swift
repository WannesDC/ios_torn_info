//
//  Crime.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Crime : Codable {
    init(crimeID: Int? = nil, crimeName: String? = nil, participants: [[String : TornStatus?]?]? = nil, timeStarted: Int64? = nil, timeReady: Int64? = nil, timeLeft: Int? = nil, timeCompleted: Int64? = nil, initiated: Bool? = nil, initiatedBy: Int? = nil, plannedBy: Int? = nil, success: Bool? = nil, moneyGain: Int? = nil, respectGain: Int? = nil) {
        self.crimeID = crimeID
        self.crimeName = crimeName
        self.participants = participants
        self.timeStarted = timeStarted
        self.timeReady = timeReady
        self.timeLeft = timeLeft
        self.timeCompleted = timeCompleted
        self.initiated = initiated
        self.initiatedBy = initiatedBy
        self.plannedBy = plannedBy
        self.success = success
        self.moneyGain = moneyGain
        self.respectGain = respectGain
    }
    
    
 
    
    var crimeID: Int?
    var crimeName: String?
    var participants: [[String: TornStatus?]?]?
    var timeStarted: Int64?
    var timeReady: Int64?
    var timeLeft: Int?
    var timeCompleted: Int64?
    var initiated: Bool?
    var initiatedBy: Int?
    var plannedBy: Int?
    var success: Bool?
    var moneyGain: Int?
    var respectGain: Int?
    
    enum CodingKeys: String, CodingKey {
        case crimeID = "crime_id"
        case crimeName = "crime_name"
        case participants
        case timeStarted = "time_started"
        case timeReady = "time_ready"
        case timeLeft = "time_left"
        case timeCompleted = "time_completed"
        case initiated
        case initiatedBy = "initiated_by"
        case plannedBy = "planned_by"
        case success
        case moneyGain = "money_gain"
        case respectGain = "respect_gain"
    }
    
    
}
