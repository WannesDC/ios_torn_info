//
//  Raids.swift
//  Torn Info
//
//  Created by Wannes De Craene on 25/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Raids :Codable {
    
    init(raids: [String : Raid]) {
        self.raids = raids
    }
    
    var raids : [String: Raid]
    
}
