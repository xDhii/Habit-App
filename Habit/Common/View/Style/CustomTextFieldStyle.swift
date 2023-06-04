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
            .overlay(
                RoundedRectangle(cornerRadius: 6)
                    .stroke(Color("borderColor"), lineWidth: 1)
            )
    }
}
