//
//  HabitDetailRemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 12/06/23.
//

import Combine
import Foundation

class HabitDetailRemoteDataSource {
  static var shared: HabitDetailRemoteDataSource = HabitDetailRemoteDataSource()

  private init() {
  }

  func save(habitId: Int, request: HabitValueRequest) -> Future<Bool, AppError> {
    return Future<Bool, AppError> { promise in
      let path = String(format: WebService.Endpoint.habitValues.rawValue, habitId)

      WebService.call(path: path, method: .post, body: request) { result in
        switch result {
        case let .failure(error, data):
          if let data = data {
            if error == .unauthorized {
              let decoder = JSONDecoder()
              let response = try? decoder.decode(SignInErrorResponse.self, from: data)

              promise(.failure(AppError.response(message: response?.detail.message ?? "Unknown Server Error")))
            }
          }
          break
        case .success:
          promise(.success(true))
          break
        }
      }
    }
  }
}
