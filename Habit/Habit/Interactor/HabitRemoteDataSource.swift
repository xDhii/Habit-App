//
//  HabitRemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 08/06/23.
//

import Combine
import Foundation

class HabitRemoteDataSource {
    static var shared: HabitRemoteDataSource = HabitRemoteDataSource()

    private init() {
    }

    func fetchHabits() -> Future<[HabitResponse], AppError> {
        return Future<[HabitResponse], AppError> { promise in
            WebService.call(path: .habits, method: .get) { result in
                switch result {
                case let .failure(_, data):
                    if let data = data {
                        let decoder = JSONDecoder()
                        let response = try? decoder.decode(SignInErrorResponse.self, from: data)

                        promise(.failure(AppError.response(message: response?.detail.message ?? "Unknown Error")))
                    }

                    break
                case let .success(data):
                    let decoder = JSONDecoder()
                    let response = try? decoder.decode([HabitResponse].self, from: data)

                    guard let res = response else {
                        return
                    }

                    promise(.success(res))
                    break
                }
            }
        }
    }
}
