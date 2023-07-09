//
//  HabitCreateRemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import Combine
import Foundation

class HabitCreateRemoteDataSource {
  static var shared: HabitCreateRemoteDataSource = HabitCreateRemoteDataSource()

  private init() {
  }

  func save(request: HabitCreateRequest) -> Future<Void, AppError> {
    return Future<Void, AppError> { promise in
      WebService.call(path: .habits, params: [
        URLQueryItem(name: "name", value: request.name),
        URLQueryItem(name: "label", value: request.label),
      ], data: request.imageData) { result in
        switch result {
        case let .failure(error, data):
          if let data = data {
            if error == .unauthorized {
              let decoder = JSONDecoder()
              let response = try? decoder.decode(SignInErrorResponse.self, from: data)
              promise(.failure(AppError.response(message: response?.detail.message ?? "Unknown Error")))
            }
          }
          break
        case .success:
          promise(.success(()))
          break
        }
      }
    }
  }
}
