//
//  Colleague.swift
//  Virgin Money Staff
//
//  Created by Megha on 11/10/22.
//

import Foundation


struct ColleagueElement: Codable {
    
    let firstName: String
    let avatar: String
    let lastName: String
    let email: String
    let jobtitle: String
    let favouriteColor: String

    enum CodingKeys: String, CodingKey {
        case firstName = "firstName"
        case avatar = "avatar"
        case lastName = "lastName"
        case email = "email"
        case jobtitle = "jobtitle"
        case favouriteColor = "favouriteColor"
    }
}
