//
//  RefreshRequest.swift
//  Habit
//
//  Created by Adriano Valumin on 28/05/23.
//

import Foundation

struct RefreshRequest: Encodable {
    let token: String
    
    enum CodingKeys: String, CodingKey {
        case token = "refresh_token"
    }    
}
