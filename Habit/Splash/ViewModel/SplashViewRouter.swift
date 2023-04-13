//
//  SplashViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import SwiftUI

enum SplashViewRouter {
    static func makeSignInView() -> some View {
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
    }
}
