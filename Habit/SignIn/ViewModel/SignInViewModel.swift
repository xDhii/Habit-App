//
//  SignInViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import SwiftUI

class SignInViewModel: ObservableObject {
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.uiState = .goToHomeScreen
        }
    }
    
    
}
