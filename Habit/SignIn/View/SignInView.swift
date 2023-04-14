//
//  SignInView.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    var body: some View {
        Text("Tela de login")
            .background(Color.blue)
    }
}
