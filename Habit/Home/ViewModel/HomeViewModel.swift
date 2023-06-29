//
//  HomeViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
  let viewModel = HabitViewModel(interactor: HabitInteractor())
  let profileViewModel = ProfileViewModel(interactor: ProfileInteractor())
}

extension HomeViewModel {
  func habitView() -> some View {
    return HomeViewRouter.makeHabitView(viewModel: viewModel)
  }

  func profileView() -> some View {
    return HomeViewRouter.makeProfileView(viewModel: profileViewModel)
  }
}
