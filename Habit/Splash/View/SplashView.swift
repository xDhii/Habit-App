//
//  SplashView.swift
//  Habit
//
//  Created by Adriano Valumin on 10/04/23.
//

import SwiftUI

struct SplashView: View {
    @ObservedObject var viewModel: SplashViewModel

    var body: some View {
        Group {
            switch viewModel.uiState {
            case .loading:
                loadingView()
            case .goToSignInScreen:
                Text("Carregar tela de login")
            case .goToHomeScreen:
                Text("Carregar tela principal")
            case let .error(errorMessage):
                loadingView(error: errorMessage)
            }
        }.onAppear(perform: viewModel.onAppear)
    }
}

extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color("backgroundColor"))
                .ignoresSafeArea()

            if let error = error {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")) {
                            // Do something
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = SplashViewModel()
        SplashView(viewModel: viewModel)
    }
}
