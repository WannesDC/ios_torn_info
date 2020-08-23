//
//  States.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation


final class States : Codable {

    
    var hospitalTimeStamp : Int
    var jailTimeStamp: Int
    
    enum CodingKeys: String, CodingKey {
        case hospitalTimeStamp = "hospital_timestamp"
        case jailTimeStamp = "jail_timestamp"
    }
    
    init(hospitalTimeStamp: Int, jailTimeStamp: Int) {
        self.hospitalTimeStamp = hospitalTimeStamp
        self.jailTimeStamp = jailTimeStamp
    }
    
}
