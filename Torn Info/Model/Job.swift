//
//  Job.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation


final class Job : Codable {
    var position: String
    var companyID: Int
    var companyName: String
    
    enum CodingKeys: String, CodingKey {
        case position
        case companyID = "company_id"
        case companyName = "company_name"
    }
    
    init(position: String, companyID: Int, companyName: String) {
        self.position = position
        self.companyID = companyID
        self.companyName = companyName
    }
    
}
