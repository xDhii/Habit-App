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
    private var cancellableRefresh: AnyCancellable?
    private let interactor: SplashInteractor

    init(interactor: SplashInteractor) {
        self.interactor = interactor
    }

    deinit {
        cancellableAuth?.cancel()
        cancellableRefresh?.cancel()
    }

    func onAppear() {
        cancellableAuth = interactor.fetchAuth()
            .receive(on: DispatchQueue.main)
            .sink { userAuth in
                if userAuth == nil {
                    self.uiState = .goToSignInScreen
                } else if Date().timeIntervalSince1970 > Double(userAuth!.expires) {
                    let request = RefreshRequest(token: userAuth!.refreshToken)
                    self.cancellableRefresh = self.interactor.refreshToken(refreshRequest: request)
                        .receive(on: DispatchQueue.main)
                        .sink(receiveCompletion: { completion in
                            switch completion {
                            case .failure:
                                self.uiState = .goToSignInScreen
                                break
                            default:
                                break
                            }
                        }, receiveValue: { success in

                            let auth = UserAuth(idToken: success.accessToken,
                                                refreshToken: success.refreshToken,
                                                expires: Date().timeIntervalSince1970 + Double(success.expires),
                                                tokenType: success.tokenType)

                            self.interactor.insertAuth(userAuth: auth)
                            self.uiState = .goToHomeScreen

                        })
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
    func homeView() -> some View {
        return SplashViewRouter.makeHomeView()
    }
}
