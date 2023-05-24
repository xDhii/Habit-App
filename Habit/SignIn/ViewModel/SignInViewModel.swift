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
    private var cancellableRequest: AnyCancellable?
    private let publisher = PassthroughSubject<Bool, Never>()
    private let interactor: SignInInteractor

    @Published var uiState: SignInUIState = .none

    init(interactor: SignInInteractor) {
        self.interactor = interactor
        cancellable = publisher.sink { value in

            if value {
                self.uiState = .goToHomeScreen
            }
        }
    }

    deinit {
        cancellable?.cancel()
        cancellableRequest?.cancel()
    }

    func login() {
        uiState = .loading

        cancellableRequest = interactor.login(loginRequest: SignInRequest(email: email, password: password))
            .receive(on: DispatchQueue.main)
            .sink { completion in

                switch completion {
                case let .failure(appError):
                    self.uiState = SignInUIState.error(appError.message)
                    break
                case .finished:
                    break
                }

            } receiveValue: { _ in
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
