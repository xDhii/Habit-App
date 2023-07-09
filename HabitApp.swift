//
//  HabitApp.swift
//  Habit
//
//  Created by Adriano Valumin on 10/04/23.
//

import SwiftUI

@main
struct HabitApp: App {
  var body: some Scene {
    WindowGroup {
      SplashView(viewModel: SplashViewModel(interactor: SplashInteractor()))
    }
  }
}
