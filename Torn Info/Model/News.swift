//
//  News.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class News: Codable {
    init(timestamp: Int, news: String) {
        self.timestamp = timestamp
        self.news = news
    }
    
    var timestamp: Int
    var news: String
    
}
