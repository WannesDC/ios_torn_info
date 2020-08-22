//
//  Status.swift
//  Torn Info
//
//  Created by Wannes De Craene on 19/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class TornStatus: Codable {
    var description: String
    var details: String
    var state: String
    var color: String
    var until: Int
    
    init(description: String, details: String, state: String, color: String, until: Int) {
        self.description = description
        self.details = details
        self.state = state
        self.color = color
        self.until = until
    }
}
