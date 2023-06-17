//
//  ButtonStyle.swift
//  Habit
//
//  Created by Adriano Valumin on 04/06/23.
//

import Foundation
import SwiftUI

struct ButtonStyle: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(maxWidth: .infinity)
      .padding(.vertical, 14)
      .padding(.horizontal, 16)
      .font(Font.system(.title3).bold())
      .foregroundColor(Color("enabledButtonTextColor"))
      .background(Color("enabledPrimaryButtonBackgroundColor"))
      .cornerRadius(7)
  }
}
