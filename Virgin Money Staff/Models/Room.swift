//
//  Room.swift
//  Virgin Money Staff
//
//  Created by Megha Uppin on 12/10/2022.
//

struct RoomElement: Codable {
    let createdAt: String
    let isOccupied: Bool
    let maxOccupancy: Int
    let id: String

    enum CodingKeys: String, CodingKey {
        case createdAt = "createdAt"
        case isOccupied = "isOccupied"
        case maxOccupancy = "maxOccupancy"
        case id = "id"
    }
}

typealias Room = [RoomElement]


