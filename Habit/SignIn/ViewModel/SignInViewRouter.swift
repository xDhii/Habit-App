//
//  SignInViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

enum SignInViewRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }

    static func makeSignUpView() -> some View {
        return SignUpView()
    }
}
