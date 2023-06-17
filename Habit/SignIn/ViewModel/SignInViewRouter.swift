//
//  SignInViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import Combine
import SwiftUI

enum SignInViewRouter {
  static func makeHomeView() -> some View {
    let viewModel = HomeViewModel()
    return HomeView(viewModel: viewModel)
  }

  static func makeSignUpView(publisher: PassthroughSubject<Bool, Never>) -> some View {
    let viewModel = SignUpViewModel(interactor: SignUpInteractor())
    viewModel.publisher = publisher
    return SignUpView(viewModel: viewModel)
  }
}
