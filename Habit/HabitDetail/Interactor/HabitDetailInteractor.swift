//
//  HabitDetailInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 12/06/23.
//

import Combine
import Foundation

class HabitDetailInteractor {
    private let remote: HabitDetailRemoteDataSource = .shared
}

extension HabitDetailInteractor {
    func save(habitId: Int, habitValueRequest request: HabitValueRequest) -> Future<Bool, AppError> {
        return remote.save(habitId: habitId, request: request)
    }
}
