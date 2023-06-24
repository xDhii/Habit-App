//
//  SignInErrorResponse.swift
//  Habit
//
//  Created by Adriano Valumin on 18/05/23.
//

import Foundation

struct SignInErrorResponse: Decodable {
  let detail: SignInDetailErrorResponse

  enum CodingKeys: String, CodingKey {
    case detail
  }
}

struct SignInDetailErrorResponse: Decodable {
  let message: String

  enum CodingKeys: String, CodingKey {
    case message
  }
}
