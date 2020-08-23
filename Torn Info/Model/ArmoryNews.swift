//
//  ArmoryNews.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class ArmoryNews : Codable {
    init(armorynews: [String : News]) {
        self.armorynews = armorynews
    }
    
    var armorynews: [String: News]
    
    
}
