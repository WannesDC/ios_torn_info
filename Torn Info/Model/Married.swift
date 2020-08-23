//
//  Married.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Married : Codable {

    
    var spouseID: Int
    var spouseName: String
    var duration: Int
    
    enum CodingKeys: String, CodingKey {
        case spouseID = "spouse_id"
        case spouseName = "spouse_name"
        case duration
    }
    init(spouseID: Int, spouseName: String, duration: Int) {
        self.spouseID = spouseID
        self.spouseName = spouseName
        self.duration = duration
    }
}
