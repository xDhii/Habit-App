//
//  HomeViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Foundation
import SwiftUI

enum HomeViewRouter {
  static func makeHabitView(viewModel: HabitViewModel) -> some View {
    return HabitView(viewModel: viewModel)
  }

  static func makeProfileView() -> some View {
    return ProfileView()
  }
}
