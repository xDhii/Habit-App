//
//  SignUpView.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

struct SignUpView: View {
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var document = ""
    @State var phone = ""
    @State var birthday = ""

    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 8) {
                Text("Cadastro")
                    .foregroundColor(Color.black)
                    .font(Font.system(.title).bold())
                    .padding(.bottom, 8)

                fullNameField
                emailField
                passwordField
                documentField
                phoneField
                birthdayField
                saveButton
            }
            Spacer()
        }
    }
}

extension SignUpView {
    var fullNameField: some View {
        TextField("", text: $fullName)
            .border(Color.black)
    }
}

extension SignUpView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignUpView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SignUpView {
    var documentField: some View {
        TextField("", text: $document)
            .border(Color.black)
    }
}

extension SignUpView {
    var phoneField: some View {
        TextField("", text: $phone)
            .border(Color.black)
    }
}

extension SignUpView {
    var birthdayField: some View {
        TextField("", text: $birthday)
            .border(Color.black)
    }
}

extension SignUpView {
    var saveButton: some View {
        Button("Relizar Cadastro") {
            // evento do botão
        }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
