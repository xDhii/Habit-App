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
  var mask: String? = nil
  var keyboard: UIKeyboardType = .default
  var error: String? = nil
  var failure: Bool? = nil
  var isSecure: Bool = false
  var autoCapitalization: UITextAutocapitalizationType = .none

  var body: some View {
    VStack {
      if isSecure {
        SecureField(placeholder, text: $text)
          .keyboardType(keyboard)
          .textFieldStyle(CustomTextFieldStyle())

      } else {
        TextField(placeholder, text: $text)
          .keyboardType(keyboard)
          .autocapitalization(autoCapitalization)
          .textFieldStyle(CustomTextFieldStyle())
          .onChange(of: text, perform: { value in
            if let mask = mask {
              Mask.mask(mask: mask, value: value, text: &text)
            }
          })
      }
      if let error = error, failure == true, !text.isEmpty {
        Text(error).padding(.horizontal, 8)
          .padding(.vertical, 4)
          .foregroundColor(Color("errorColor"))
          .font(.subheadline)
          .overlay(RoundedRectangle(cornerRadius: 7)
            .stroke(Color("errorColor"), lineWidth: 1)
          )
      }
    }
    .padding(.bottom, 10)
    .padding(.horizontal, 2)
  }
}

struct EditTextView_Previews: PreviewProvider {
  static var previews: some View {
    EditTextView(text: .constant("Text"),
                 placeholder: "E-mail",
                 error: "Invalid Field",
                 failure: "a@a.com".count < 3)
  }
}
