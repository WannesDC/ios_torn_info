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
    var timeLeft: Int
    
    enum CodingKeys: String, CodingKey {
        case amount
        case timeLeft = "time_left"
    }
    
    init(amount: Int64, timeLeft: Int) {
        self.amount = amount
        self.timeLeft = timeLeft
    }
}
