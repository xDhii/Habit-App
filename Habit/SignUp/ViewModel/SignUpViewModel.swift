//
//  SignUpViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 17/04/23.
//

import Combine
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var fullName = ""
    @Published var email = ""
    @Published var password = ""
    @Published var document = ""
    @Published var phone = ""
    @Published var birthday = ""
    @Published var gender = Gender.male

    var publisher: PassthroughSubject<Bool, Never>!

    private var cancellableSignUp: AnyCancellable?
    private var cancellableSignIn: AnyCancellable?

    @Published var uiState: SignUpUIState = .none

    private let interactor: SignUpInteractor

    init(interactor: SignUpInteractor) {
        self.interactor = interactor
    }

    deinit {
        cancellableSignIn?.cancel()
        cancellableSignUp?.cancel()
    }

    func signUp() {
        uiState = .loading

        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "dd/MM/yyyy"

        let dateFormated = formatter.date(from: birthday)

        guard let dateFormated = dateFormated else {
            uiState = .error("Data inválida \(birthday)")
            return
        }

        formatter.dateFormat = "yyyy-MM-dd"

        let birthday = formatter.string(from: dateFormated)
        let signUpRequest = SignUpRequest(fullName: fullName,
                                          email: email,
                                          password: password,
                                          document: document,
                                          phone: phone,
                                          birthday: birthday,
                                          gender: gender.index)

        cancellableSignUp = interactor.postUser(signUpRequest: signUpRequest)
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case let .failure(appError):
                    self.uiState = .error(appError.message)
                    break
                case .finished:
                    break
                }
            } receiveValue: { created in

                if created {
                    self.cancellableSignIn = self.interactor.login(signInRequest: SignInRequest(email: self.email, password: self.password))
                        .receive(on: DispatchQueue.main)
                        .sink { completion in
                            switch completion {
                            case let .failure(appError):
                                self.uiState = .error(appError.message)
                                break
                            case .finished:
                                break
                            }
                        } receiveValue: { success in

                            let auth = UserAuth(idToken: success.accessToken,
                                                refreshToken: success.refreshToken,
                                                expires: Date().timeIntervalSince1970 + Double(success.expires),
                                                tokenType: success.tokenType)

                            self.interactor.insertAuth(userAuth: auth)

                            self.publisher.send(created)
                            self.uiState = .success
                        }
                }
            }
    }
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
}
