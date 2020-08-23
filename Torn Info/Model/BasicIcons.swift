//
//  BasicIcons.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class BasicIcons : Codable {
    internal init(dict: [String : String]) {
        self.dict = dict
    }
    
    
    var dict : [String: String]
    
}
