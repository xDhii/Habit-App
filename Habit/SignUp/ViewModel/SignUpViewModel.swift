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

        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "dd/MM/yyyy"
        
        let dateFormated = formatter.date(from: birthday)

        guard let dateFormated = dateFormated else {
            self.uiState = .error("Data inválida \(birthday)")
            return
        }
        
        formatter.dateFormat = "yyyy-MM-dd"
        
        let birthday = formatter.string(from: dateFormated)
        
        WebService.postUser(request: SignUpRequest(fullName: fullName,
                                                   email: email,
                                                   password: password,
                                                   document: document,
                                                   phone: phone,
                                                   birthday: birthday,
                                                   gender: gender.index)) { (successResponse, errorResponse) in
            if let error = errorResponse {
                DispatchQueue.main.async {
                    self.uiState = .error(error.detail)                    
                }
            }
            
            if let success = successResponse {
                DispatchQueue.main.async {
                    self.publisher.send(success)
                    if success {
                        self.uiState = .success
                    }                    
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
