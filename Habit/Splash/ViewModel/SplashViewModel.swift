//
//  SplashViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 11/04/23.
//

import Combine
import SwiftUI

class SplashViewModel: ObservableObject {
    @Published var uiState: SplashUIState = .loading
    private var cancellableAuth: AnyCancellable?
    private let interactor: SplashInteractor

    init(interactor: SplashInteractor) {
        self.interactor = interactor
    }

    deinit {
        cancellableAuth?.cancel()
    }

    func onAppear() {
        cancellableAuth = interactor.fetchAuth()
            .receive(on: DispatchQueue.main)
            .sink { userAuth in
                if userAuth == nil {
                    self.uiState = .goToSignInScreen
                } else if Date().timeIntervalSince1970 > Date().timeIntervalSince1970 + Double(userAuth!.expires) {
                    // add
                } else {
                    self.uiState = .goToHomeScreen
                }
            }
    }
}

extension SplashViewModel {
    func signInView() -> some View {
        return SplashViewRouter.makeSignInView()
    }
}
