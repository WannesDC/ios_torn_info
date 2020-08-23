//
//  Cooldowns.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Cooldowns: Codable {
    
    var drug: Int
    var medical: Int
    var booster: Int
    init(drug: Int, medical: Int, booster: Int) {
        self.drug = drug
        self.medical = medical
        self.booster = booster
    }
    
}
