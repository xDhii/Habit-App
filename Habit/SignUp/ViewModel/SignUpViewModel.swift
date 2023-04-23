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

    @Published var uiState: SignUpUIState = .none

    func signUp() {
        uiState = .loading
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
//            self.uiState = .error("Usuário já existente")
            self.uiState = .success
            self.publisher.send(true)
        }
    }
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
}
