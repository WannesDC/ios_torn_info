//
//  Profile.swift
//  Torn Info
//
//  Created by Wannes De Craene on 23/08/2020.
//  Copyright © 2020 Wannes De Craene. All rights reserved.
//

import Foundation

final class Profile: Codable {
    
    var rank: String
    var level: Int
    var gender: String
    var property: String
    var signup: String
    var awards: Int
    var friends: Int
    var enemies: Int
    var forumPosts: Int
    var karma: Int
    var age: Int
    var role: String
    var donator: Int
    var playerID: Int
    var name: String
    var propertyID: Int
    var serverTime: Int64
    var points: Int
    var caymanBank: Int64
    var vaultAmount: Int64
    var networth: Int64
    var moneyOnHand: Int64
    var life: Life
    var status: TornStatus
    var job: Job
    var faction: Faction
    var married: Married
    var basicIcons: [String: String]
    var states: States
    var lastAction: LastAction
    var happy: Bars
    var energy: Bars
    var nerve: Bars
    var chain: Chain
    var cooldowns: Cooldowns
    var cityBank: CityBank
    
    enum CodingKeys : String, CodingKey {
        case rank
        case level
        case gender
        case property
        case signup
        case awards
        case friends
        case enemies
        case forumPosts
        case karma
        case age
        case role
        case donator
        case playerID = "player_id"
        case name
        case propertyID =  "property_id"
        case serverTime = "server_time"
        case points
        case caymanBank = "cayman_bank"
        case vaultAmount = "vault_amount"
        case networth
        case moneyOnHand = "money_onhand"
        case life
        case status
        case job
        case faction
        case married
        case basicIcons = "basicicons"
        case states
        case lastAction = "last_action"
        case happy
        case energy
        case nerve
        case chain
        case cooldowns
        case cityBank = "city_bank"
    }
    
    init(rank: String, level: Int, gender: String, property: String, signup: String, awards: Int, friends: Int, enemies: Int, forumPosts: Int, karma: Int, age: Int, role: String, donator: Int, playerID: Int, name: String, propertyID: Int, serverTime: Int64, points: Int, caymanBank: Int64, vaultAmount: Int64, networth: Int64, moneyOnHand: Int64, life: Life, status: TornStatus, job: Job, faction: Faction, married: Married, basicIcons: [String : String], states: States, lastAction: LastAction, happy: Bars, energy: Bars, nerve: Bars, chain: Chain, cooldowns: Cooldowns, cityBank: CityBank) {
        self.rank = rank
        self.level = level
        self.gender = gender
        self.property = property
        self.signup = signup
        self.awards = awards
        self.friends = friends
        self.enemies = enemies
        self.forumPosts = forumPosts
        self.karma = karma
        self.age = age
        self.role = role
        self.donator = donator
        self.playerID = playerID
        self.name = name
        self.propertyID = propertyID
        self.serverTime = serverTime
        self.points = points
        self.caymanBank = caymanBank
        self.vaultAmount = vaultAmount
        self.networth = networth
        self.moneyOnHand = moneyOnHand
        self.life = life
        self.status = status
        self.job = job
        self.faction = faction
        self.married = married
        self.basicIcons = basicIcons
        self.states = states
        self.lastAction = lastAction
        self.happy = happy
        self.energy = energy
        self.nerve = nerve
        self.chain = chain
        self.cooldowns = cooldowns
        self.cityBank = cityBank
    }
    
    
    

}
