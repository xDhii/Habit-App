//
//  SplashView.swift
//  Habit
//
//  Created by Adriano Valumin on 10/04/23.
//

import SwiftUI

struct SplashView: View {
    @State var state: SplashUIState = .loading

    var body: some View {
        switch state {
        case .loading:
            loadingView()
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen:
            Text("Carregar tela principal")
        case let .error(errorMessage):
            loadingView(error: errorMessage)
        }
    }
}
//1.
//struct LoadingView: View {
//    var body: some View {
//        ZStack {
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                .background(Color("backgroundColor"))
//                .ignoresSafeArea()
//        }
//    }
//}

//2.
//extension SplashView {
//    var loading: some View {
//        ZStack {
//            Image("logo")
//                .resizable()
//                .scaledToFit()
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
//                .background(Color("backgroundColor"))
//                .ignoresSafeArea()
//        }
//
//    }
//}

//3.
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
                            //Do something
                        })
                    }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView(state:
                .error("Teste de erro no servidor.")
//                .loading
        )
    }
}
