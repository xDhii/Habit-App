//
//  SignInView.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import SwiftUI

struct SignInView: View {
  @ObservedObject var viewModel: SignInViewModel

  @State var action: Int? = 0
  @State var navigationHidden: Bool = true

  var body: some View {
    ZStack {
      if case SignInUIState.goToHomeScreen = viewModel.uiState {
        viewModel.homeView()
      } else {
        NavigationView {
          ZStack(alignment: .top) {
            Color("primaryBackgroundColor")
              .ignoresSafeArea()
            ScrollView(showsIndicators: true) {
              VStack(alignment: .center, spacing: 20) {
                Spacer(minLength: 36)
                VStack(alignment: .center, spacing: 8) {
                  Image("logoImage")
                    .resizable()
                    .scaledToFit()
                    .padding(.horizontal, 48)

                  Text("Login")
                    .foregroundColor(Color("primaryTitleColor"))
                    .font(Font.system(.title).bold())
                    .padding(.bottom, 8)

                  emailField
                  passwordField
                  enterButton
                  registerLink
                }
                .padding(.horizontal, 16)
              }

              if case let SignInUIState.error(value) = viewModel.uiState {
                Text("")
                  .alert(isPresented: .constant(true)) {
                    Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("Ok")) {
                    })
                  }
              }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .padding(.horizontal, 16)
            .navigationBarTitle("Login", displayMode: .inline)
            .navigationBarHidden(navigationHidden)
          }
        }
      }
    }
  }
}

extension SignInView {
  var emailField: some View {
    EditTextView(text: $viewModel.email,
                 placeholder: "E-mail",
                 keyboard: .emailAddress,
                 error: "Invalid e-mail",
                 failure: !viewModel.email.isEmail())
  }
}

extension SignInView {
  var passwordField: some View {
    EditTextView(text: $viewModel.password,
                 placeholder: "Password",
                 keyboard: .default,
                 error: "Password should have at least 8 characters",
                 failure: viewModel.password.count < 8,
                 isSecure: true)
  }
}

extension SignInView {
  var enterButton: some View {
    LoadingButtonView(action: {
                        viewModel.login()
                      },
                      text: "Sign In",
                      disabled: !viewModel.email.isEmail() || viewModel.password.count < 8,
                      showProgress: self.viewModel.uiState == SignInUIState.loading
    )
  }
}

extension SignInView {
  var registerLink: some View {
    VStack {
      Text("Don't have an account??")
        .foregroundColor(Color("primaryTextColor"))
        .padding(.top, 48)

      ZStack {
               
        NavigationLink(
          destination: viewModel.signUpView(),
          tag: 1,
          selection: $action,
          label: { EmptyView() })

        Button("Sign Up") {
          self.action = 1
        }.accentColor(Color("primaryLinkColor"))
      }
    }
  }
}

struct SignIn_Preview: PreviewProvider {
  static var previews: some View {
    let viewModel = SignInViewModel(interactor: SignInInteractor())
    SignInView(viewModel: viewModel)
  }
}
