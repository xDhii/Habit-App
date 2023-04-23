//
//  SignInViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import Combine
import SwiftUI

class SignInViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""

    private var cancellable: AnyCancellable?

    private let publisher = PassthroughSubject<Bool, Never>()

    @Published var uiState: SignInUIState = .none

    init() {
        cancellable = publisher.sink { value in
            print("Usuário criado! goToHome: \(value)")

            if value {
                self.uiState = .goToHomeScreen
            }
        }
    }

    deinit {
        cancellable?.cancel()
    }

    func login() {
        uiState = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.uiState = .goToHomeScreen
        }
    }
}

extension SignInViewModel {
    func homeView() -> some View {
        return SignInViewRouter.makeHomeView()
    }

    func signUpView() -> some View {
        return SignInViewRouter.makeSignUpView(publisher: publisher)
    }
}
