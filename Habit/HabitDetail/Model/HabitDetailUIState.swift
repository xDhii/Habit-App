//
//  HabitDetailUIState.swift
//  Habit
//
//  Created by Adriano Valumin on 10/06/23.
//

import Foundation

enum HabitDetailUIState: Equatable {
  case none
  case loading
  case success
  case error(String)
}
