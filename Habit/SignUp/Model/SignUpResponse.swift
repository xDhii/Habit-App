//
//  SignUpResponse.swift
//  Habit
//
//  Created by Adriano Valumin on 17/05/23.
//

import Foundation

struct SignUpResponse: Decodable {
    let detail: String?
    
    enum CodingKeys: String, CodingKey {
        case detail
    }
}
