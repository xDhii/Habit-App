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

    private let interactor: SignInInteractor

    @Published var uiState: SignInUIState = .none

    init(interactor: SignInInteractor) {
        self.interactor = interactor
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

        interactor.login(loginRequest: SignInRequest(email: email, password: password)) { successResponse, errorResponse in

            if let error = errorResponse {
                DispatchQueue.main.async {
                    self.uiState = .error(error.detail.message)
                }
            }

            if successResponse != nil {
                DispatchQueue.main.async {
                    self.uiState = .goToHomeScreen
                }
            }
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
