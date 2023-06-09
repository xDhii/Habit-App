//
//  HabitInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 08/06/23.
//

import Foundation
import Combine

class HabitInteractor {
    
    private let remote: HabitRemoteDataSource = .shared
}

extension HabitInteractor {
    func fetchHabits() -> Future<[HabitResponse], AppError> {
        return remote.fetchHabits()
    }
}
