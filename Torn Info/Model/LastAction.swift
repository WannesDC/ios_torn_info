//
//  LastAction.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class LastAction : Codable {

    
    var status: String
    var timestamp: Int64
    var relative: String
    
    init(status: String, timestamp: Int64, relative: String) {
        self.status = status
        self.timestamp = timestamp
        self.relative = relative
    }
    
}
