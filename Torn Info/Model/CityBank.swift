//
//  CityBank.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class CityBank : Codable {

    
    var amount: Int64
    var timeLife: Int64
    
    enum CodingKeys: String, CodingKey {
        case amount
        case TimeLife = "time_life"
    }
    
    init(amount: Int64, timeLife: Int64) {
        self.amount = amount
        self.timeLife = timeLife
    }
}
