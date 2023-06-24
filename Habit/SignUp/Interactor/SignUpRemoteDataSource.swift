//
//  SignUpRemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 24/05/23.
//

import Combine
import Foundation

class SignUpRemoteDataSource {
  static var shared: SignUpRemoteDataSource = SignUpRemoteDataSource()

  private init() {
  }

  func postUser(request: SignUpRequest) -> Future<Bool, AppError> {
    return Future { promise in
      WebService.call(path: .postUser,
                      method: .post,
                      body: request) { result in
        switch result {
        case let .failure(error, data):
          if let data = data {
            if error == .badRequest {
              let decoder = JSONDecoder()
              let response = try? decoder.decode(ErrorResponse.self, from: data)
              promise(.failure(AppError.response(message: response?.detail ?? "Unknown Error")))
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
