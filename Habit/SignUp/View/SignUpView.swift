//
//  SignUpView.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

struct SignUpView: View {
    @ObservedObject var viewModel: SignUpViewModel

    var body: some View {
        ZStack {
            ZStack(alignment: .top) {
                Color("primaryBackgroundColor")
                    .ignoresSafeArea()
                ScrollView(showsIndicators: false) {
                    VStack(alignment: .center) {
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Cadastro")
                                .foregroundColor(Color("primaryTitle"))
                                .font(Font.system(.title).bold())
                                .padding(.bottom, 8)

                            fullNameField
                            emailField
                            passwordField
                            documentField
                            phoneField
                            birthdayField
                            genderField
                            saveButton
                        }
                        Spacer()
                    }.padding(.horizontal, 8)

                }.padding()

                if case let SignUpUIState.error(value) = viewModel.uiState {
                    Text("")
                        .alert(isPresented: .constant(true)) {
                            Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("Ok")))
                        }
                }
            }
        }
    }
}

extension SignUpView {
    var fullNameField: some View {
        EditTextView(text: $viewModel.fullName,
                     placeholder: "Nome Completo",
                     keyboard: .alphabet,
                     error: "Digite seu nome completo",
                     failure: viewModel.fullName.count < 3)
    }
}

extension SignUpView {
    var emailField: some View {
        EditTextView(text: $viewModel.email,
                     placeholder: "E-mail",
                     keyboard: .emailAddress,
                     error: "E-mail inválido",
                     failure: !viewModel.email.isEmail())
    }
}

extension SignUpView {
    var passwordField: some View {
        EditTextView(text: $viewModel.password,
                     placeholder: "Senha",
                     keyboard: .default,
                     error: "Senha deve ter ao menos 8 caracteres",
                     failure: viewModel.password.count < 8,
                     isSecure: true)
    }
}

extension SignUpView {
    var documentField: some View {
        EditTextView(text: $viewModel.document,
                     placeholder: "CPF",
                     keyboard: .numberPad,
                     error: "CPF inválido",
                     failure: viewModel.document.count != 11)
    }
}

extension SignUpView {
    var phoneField: some View {
        EditTextView(text: $viewModel.phone,
                     placeholder: "Celular",
                     keyboard: .numberPad,
                     error: "Digite seu telefone com DDD",
                     failure: viewModel.phone.count < 10 || viewModel.phone.count >= 12)
    }
}

extension SignUpView {
    var birthdayField: some View {
        EditTextView(text: $viewModel.birthday,
                     placeholder: "Data de Nascimento",
                     keyboard: .default,
                     error: "Data de nascimento deve ser no formado dd/MM/yyyy",
                     failure: viewModel.birthday.count != 10)
    }
}

extension SignUpView {
    var genderField: some View {
        Picker("Gender", selection: $viewModel.gender) {
            ForEach(Gender.allCases, id: \.self) { value in
                Text(value.rawValue)
                    .tag(value)
            }
        }.pickerStyle(SegmentedPickerStyle())
            .padding(.top, 16)
            .padding(.bottom, 32)
    }
}

extension SignUpView {
    var saveButton: some View {
        LoadingButtonView(action: {
                              viewModel.signUp()
                          },
                          text: "Realizar Cadastro",
                          disabled: !viewModel.email.isEmail() ||
                              viewModel.password.count < 8 ||
                              viewModel.fullName.count < 3 ||
                              viewModel.document.count != 11 ||
                              viewModel.phone.count < 10 || viewModel.phone.count >= 12 ||
                              viewModel.birthday.count != 10,
                          showProgress: self.viewModel.uiState == SignUpUIState.loading
        )
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView(viewModel: SignUpViewModel(interactor: SignUpInteractor()))
    }
}
