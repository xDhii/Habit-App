//
//  HabitCreateInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import Combine
import Foundation

class HabitCreateInteractor {
  private let remote: HabitCreateRemoteDataSource = .shared
  private let local: LocalDataSource = .shared
}

extension HabitCreateInteractor {
  func save(habitCreateRequest request: HabitCreateRequest) -> Future<Void, AppError> {
    return remote.save(request: request)
  }
}
