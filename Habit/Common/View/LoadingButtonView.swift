//
//  LoadingButtonView.swift
//  Habit
//
//  Created by Adriano Valumin on 21/04/23.
//

import SwiftUI

struct LoadingButtonView: View {
    var action: () -> Void
    var text: String
    var disabled: Bool = false
    var showProgress: Bool

    var body: some View {
        ZStack {
            Button(action: {
                action()
            }, label: {
                Text(showProgress ? "" : text)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .padding(.horizontal, 16)
                    .font(Font.system(.title3).bold())
                    .foregroundColor(Color("primaryText"))
                    .background(disabled ? Color("DisabledButton") : Color("PrimaryButton"))
                    .cornerRadius(7.0)
            }).disabled(disabled || showProgress)

            ProgressView()
                .progressViewStyle(CircularProgressViewStyle())
                .opacity(showProgress ? 1 : 0)
        }.padding()
    }
}

struct LoadingButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingButtonView(action: {
            print("Hello")
        }, text: "Entrar",
        disabled: false,
        showProgress: false)
    }
}
