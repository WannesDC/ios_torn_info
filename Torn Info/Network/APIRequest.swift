//
//  APIRequest.swift
//  Torn Info
//
//  Created by Wannes De Craene on 22/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

struct APIRequest {
    
    let resourceURL: URL
    
    
    
    init(endpoint: String) {
        let resourceString = "https://api.torn.com/\(endpoint)"
        
        guard let resourceURL = URL(string: resourceString) else {fatalError()}
        
        self.resourceURL = resourceURL
    }
 
    func callLogin() -> Basic? {
        var basicInfo: Basic?
        
        let session = URLSession.shared
            session.dataTask(with: resourceURL) { (data, response, error) in
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200, let jsonData = data else {
                    print(error ?? "")
                    return
                    }
                
                let jsonDecoder = JSONDecoder()
                
                basicInfo = try? jsonDecoder.decode(Basic.self, from: jsonData)
                
            }.resume()
        
        return basicInfo
    }
}
