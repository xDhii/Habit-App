//
//  SignInView.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import SwiftUI

struct SignInView: View {
    @ObservedObject var viewModel: SignInViewModel

    @State var email = ""
    @State var password = ""
    @State var action: Int? = 0
    @State var navigationHidden: Bool = true

    var body: some View {
        ZStack {
            if case SignInUIState.goToHomeScreen = viewModel.uiState {
                viewModel.homeView()
            } else {
                NavigationView {
                    ScrollView(showsIndicators: true) {
                        VStack(alignment: .center, spacing: 20) {
                            Spacer(minLength: 36)
                            VStack(alignment: .center, spacing: 8) {
                                Image("logo")
                                    .resizable()
                                    .scaledToFit()
                                    .padding(.horizontal, 48)

                                Text("Login")
                                    .foregroundColor(.orange)
                                    .font(Font.system(.title).bold())
                                    .padding(.bottom, 8)

                                emailField
                                passwordField
                                enterButton
                                registerLink
                            }
                        }

                        if case let SignInUIState.error(value) = viewModel.uiState {
                            Text("")
                                .alert(isPresented: .constant(true)) {
                                    Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("Ok")) {
                                        // Do something
                                    })
                                }
                        }
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .padding(.horizontal, 32)
                    .background(Color.white)
                    .navigationBarTitle("Login", displayMode: .inline)
                    .navigationBarHidden(navigationHidden)
                }
            }
        }
    }
}

extension SignInView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SignInView {
    var enterButton: some View {
        Button("Entrar") {
            viewModel.login(email: email, password: password)
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack {
            Text("Ainda não tem um cadastro?")
                .foregroundColor(.gray)
                .padding(.top, 48)

            ZStack {
                NavigationLink(
                    destination: Text("Tela de cadastro"),
                    tag: 1,
                    selection: $action,
                    label: { EmptyView() })

                Button("Cadastre-se") {
                    self.action = 1
                }
            }
        }
    }
}

struct SignIn_Preview: PreviewProvider {
    static var previews: some View {
        let viewModel = SignInViewModel()
        SignInView(viewModel: viewModel)
    }
}