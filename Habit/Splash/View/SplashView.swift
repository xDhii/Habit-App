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
            loadingView(userName: "Adriano")
        case .goToSignInScreen:
            Text("Carregar tela de login")
        case .goToHomeScreen:
            Text("Carregar tela principal")
        case let .error(msg):
            Text("Mostrar erro: \(msg)")
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
    func loadingView(userName: String) -> some View {
        ZStack {
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                .background(Color("backgroundColor"))
                .ignoresSafeArea()
            HStack {
                Text("Habit Monkey \(userName)")
                    .foregroundColor(Color.white)
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
