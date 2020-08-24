//
//  Crimes.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Crimes : Codable {
    
    
    var crimes: [String: Crime?]
    
    init(crimes: [String : Crime?]) {
        self.crimes = crimes
    }
    
    
}
