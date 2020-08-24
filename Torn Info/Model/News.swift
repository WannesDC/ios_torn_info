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
    
    func convertTimeStamp() -> String {
        guard timestamp != 0 else {
            return "N/A"
        }
        
        let date = NSDate(timeIntervalSince1970: TimeInterval(timestamp))
        let dateFormatter = DateFormatter()
        dateFormatter.timeStyle = DateFormatter.Style.medium
        dateFormatter.dateStyle = DateFormatter.Style.medium
        let formattedDate = dateFormatter.string(from: date as Date)
        print(formattedDate)
        return formattedDate
    }
    
    func stripHtmlFromNews() -> String {
        guard news != "" else {
            return "N/A"
        }
        
        let convertedString = news.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
        return convertedString

    }
}
