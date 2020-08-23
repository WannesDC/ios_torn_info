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
 
    func callLogin(completion: @escaping (Basic?) -> Void) {
        
        let session = URLSession.shared
        
            session.dataTask(with: resourceURL) { (data, response, error) in
                
                let jsonDecoder = JSONDecoder()
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    print(error ?? "")
                    return
                }
                
                if let jsonData = data,
                    let basicInfo = try? jsonDecoder.decode(Basic.self, from: jsonData) {
                    completion(basicInfo)
                } else {
                    print("It looks like this api Key is not working at this time!")
                    completion(nil)
                }
                
            }.resume()
        
    }
    
    func callProfile(completion: @escaping (Profile?) -> Void) {
        
        let session = URLSession.shared
        
            session.dataTask(with: resourceURL) { (data, response, error) in
                let jsonDecoder = JSONDecoder()
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    print(error ?? "")
                    return
                }
                
                
                if let jsonData = data,
                    //let profile = try? JSONSerialization.jsonObject(with: jsonData, options: []) {
                    let profile = try? jsonDecoder.decode(Profile.self, from: jsonData) {
                    
                    completion(profile)
                } else {
                    
                    print("something went wrong during decoding!")
                    completion(nil)
                }
                
            }.resume()
        
    }
    
    func callArmoryNews(completion: @escaping (ArmoryNews?) -> Void) {
        
        let session = URLSession.shared
        
            session.dataTask(with: resourceURL) { (data, response, error) in
            
                let jsonDecoder = JSONDecoder()
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    print(error ?? "")
                    return
                }
                
                
                if let jsonData = data,
                    let armoryNews = try? jsonDecoder.decode(ArmoryNews.self, from: jsonData) {
                    
                    completion(armoryNews)
                } else {
                    
                    print("something went wrong during decoding!")
                    completion(nil)
                }
                
            }.resume()
        
    }

    func callCrimes(completion: @escaping (Crimes?) -> Void) {
        
        let session = URLSession.shared
        
            session.dataTask(with: resourceURL) { (data, response, error) in
            
                let jsonDecoder = JSONDecoder()
                
                guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                    print(error ?? "")
                    return
                }
                
                
                if let jsonData = data,
                    let crimes = try? jsonDecoder.decode(Crimes.self, from: jsonData) {
                    
                    completion(crimes)
                } else {
                    
                    print("something went wrong during decoding!")
                    completion(nil)
                }
                
            }.resume()
        
    }


}
