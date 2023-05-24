//
//  RemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 23/05/23.
//

import Combine
import Foundation

class RemoteDataSource {
    static var shared: RemoteDataSource = RemoteDataSource()

    private init() {
    }

    func login(request: SignInRequest) -> Future<SignInResponse, AppError> {
        return Future<SignInResponse, AppError> { promise in
            WebService.call(path: .login, params: [
                URLQueryItem(name: "username", value: request.email),
                URLQueryItem(name: "password", value: request.password),
            ]) { result in
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
                case let .success(data):
                    let decoder = JSONDecoder()
                    let response = try? decoder.decode(SignInResponse.self, from: data)
                    guard let response = response else {
                        return
                    }
                    promise(.success(response))
                    break
                }
            }
        }
    }
}
