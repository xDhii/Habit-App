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
                .foregroundColor(Color("primaryTitleColor"))
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
                 placeholder: "Full Name",
                 keyboard: .alphabet,
                 error: "Enter your full name",
                 failure: viewModel.fullName.count < 3,
                 autoCapitalization: .words)
  }
}

extension SignUpView {
  var emailField: some View {
    EditTextView(text: $viewModel.email,
                 placeholder: "E-mail",
                 keyboard: .emailAddress,
                 error: "Invalid e-mail",
                 failure: !viewModel.email.isEmail())
  }
}

extension SignUpView {
  var passwordField: some View {
    EditTextView(text: $viewModel.password,
                 placeholder: "Password",
                 keyboard: .default,
                 error: "Password should have at least 8 characters",
                 failure: viewModel.password.count < 8,
                 isSecure: true)
  }
}

extension SignUpView {
  var documentField: some View {
    EditTextView(text: $viewModel.document,
                 placeholder: "CPF",
                 mask: "###.###.###-##",
                 keyboard: .numberPad,
                 error: "Invalid CPF",
                 failure: viewModel.document.count != 14)
  }
}

extension SignUpView {
  var phoneField: some View {
    EditTextView(text: $viewModel.phone,
                 placeholder: "Phone",
                 mask: "(##) ####-####",
                 keyboard: .numberPad,
                 error: "Enter your Phone number",
                 failure: viewModel.phone.count < 14 || viewModel.phone.count >= 15)
  }
}

extension SignUpView {
  var birthdayField: some View {
    EditTextView(text: $viewModel.birthday,
                 placeholder: "Birth date",
                 mask: "##/##/####",
                 keyboard: .numberPad,
                 error: "Birthday should be dd/MM/yyyy",
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
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                          viewModel.signUp()
                        }
                      },
                      text: "Sign Up",
                      disabled: !viewModel.email.isEmail() ||
                        viewModel.password.count < 8 ||
                        viewModel.fullName.count < 3 ||
                        viewModel.document.count != 14 ||
                        viewModel.phone.count < 14 || viewModel.phone.count >= 15 ||
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
