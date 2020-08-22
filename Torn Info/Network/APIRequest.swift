//
//  APIRequest.swift
//  Torn Info
//
//  Created by Wannes De Craene on 22/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

struct APIRequest {
    
    enum APIError:Error{
        case responseProblem
        case otherProblem
    }
    
    let resourceURL: URL
    
    init(endpoint: String) {
        let resourceString = "https://api.torn.com/\(endpoint)"
        
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
 
    
}
