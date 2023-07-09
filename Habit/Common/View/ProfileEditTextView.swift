//
//  ProfileEditTextView.swift
//  Habit
//
//  Created by Adriano Valumin on 09/07/23.
//

import SwiftUI

struct ProfileEditTextView: View {
  @Binding var text: String
  var placeholder: String = ""
  var mask: String? = nil
  var keyboard: UIKeyboardType = .default
  var autoCapitalization: UITextAutocapitalizationType = .none

  var body: some View {
    VStack {
      TextField(placeholder, text: $text)
        .keyboardType(keyboard)
        .autocapitalization(autoCapitalization)
        .multilineTextAlignment(.trailing)
        .onChange(of: text, perform: { value in
          if let mask = mask {
            Mask.mask(mask: mask, value: value, text: &text)
          }
        })
    }
    .padding(.bottom, 10)
    .padding(.horizontal, 2)
  }
}

struct ProfileEditTextView_Previews: PreviewProvider {
  static var previews: some View {
    ProfileEditTextView(text: .constant("Text"),
                        placeholder: "E-mail")
  }
}
