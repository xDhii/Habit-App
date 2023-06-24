//
//  HabitModel.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Foundation

enum HabitUIState: Equatable {
  case loading
  case emptyList
  case fullList([HabitCardViewModel])
  case error(String)
}
