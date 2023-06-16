//
//  HabitResponse.swift
//  Habit
//
//  Created by Adriano Valumin on 08/06/23.
//

import Foundation

struct HabitResponse: Decodable {
    let id: Int
    let name: String
    let label: String
    let iconUrl: String?
    let value: Int?
    let lastDate: String?

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case label
        case iconUrl = "icon_url"
        case value
        case lastDate = "last_date"
    }
}
