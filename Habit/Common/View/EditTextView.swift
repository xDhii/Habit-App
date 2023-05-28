//
//  EditTextView.swift
//  Habit
//
//  Created by Adriano Valumin on 20/04/23.
//

import SwiftUI

struct EditTextView: View {
    @Binding var text: String
    var placeholder: String = ""
    var keyboard: UIKeyboardType = .default
    var error: String? = nil
    var failure: Bool? = nil
    var isSecure: Bool = false

    var body: some View {
        VStack {
            if isSecure {
                SecureField(placeholder, text: $text)
                    .keyboardType(keyboard)
                    .textFieldStyle(CustomTextFieldStyle())

            } else {
                TextField(placeholder, text: $text)
                    .keyboardType(keyboard)
                    .textFieldStyle(CustomTextFieldStyle())
            }
            if let error = error, failure == true, !text.isEmpty {
                Text(error)
                    .foregroundColor(.red)
            }
        }
        .padding(.bottom, 10)
    }
}

struct EditTextView_Previews: PreviewProvider {
    static var previews: some View {
        EditTextView(text: .constant("Texto"),
                     placeholder: "E-mail",
                     error: "Campo inválido",
                     failure: "a@a.com".count < 3)
    }
}
