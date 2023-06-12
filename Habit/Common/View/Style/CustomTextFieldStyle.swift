//
//  CustomTextFieldStyle.swift
//  Habit
//
//  Created by Adriano Valumin on 20/04/23.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    public func _body(configuration: TextField<Self._Label>) -> some View {
        configuration
            .padding(.horizontal, 8)
            .padding(.vertical, 6)
            .foregroundColor(Color("primaryTextColor"))
            .background(RoundedRectangle(cornerRadius: 7).fill(Color("textFieldBackgroundColor")))
            .overlay(RoundedRectangle(cornerRadius: 7)
                .stroke(Color("borderColor"), lineWidth: 1)
            )
    }
}
