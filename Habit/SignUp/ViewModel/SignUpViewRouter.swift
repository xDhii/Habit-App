//
//  SignUpViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 17/04/23.
//

import SwiftUI

enum SignUpViewRouter {
  static func makeHomeView() -> some View {
    let viewModel = HomeViewModel()
    return HomeView(viewModel: viewModel)
  }
}
