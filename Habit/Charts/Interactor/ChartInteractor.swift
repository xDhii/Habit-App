//
//  ChartInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 03/07/23.
//

import Combine
import Foundation

class ChartInteractor {
  private let remote: ChartRemoteDataSource = .shared
}

extension ChartInteractor {
  func fetchHabitValues(habitId: Int) -> Future<[HabitValueResponse], AppError> {
    return remote.fetchHabitValues(habitId: habitId)
  }
}
