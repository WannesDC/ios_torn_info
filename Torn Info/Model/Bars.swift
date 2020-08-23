//
//  Bars.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Bars : Codable {
    var current: Int
    var maximum: Int
    var increment: Int
    var interval: Int
    var ticktime: Int
    var fulltime: Int
}
