//
//  GenderSelectorView.swift
//  Habit
//
//  Created by Adriano Valumin on 16/06/23.
//

import SwiftUI

struct GenderSelectorView: View {
  @Binding var selectedGender: Gender?

  let title: String
  let genders: [Gender]

  var body: some View {
    Form {
      Section(header: Text(title)) {
        List(genders, id: \.id) { item in
          HStack {
            Text(item.rawValue)
            Spacer()
            Image(systemName: "checkmark.circle")
              .foregroundColor(selectedGender == item ?
                Color("enabledPrimaryButtonBackgroundColor") : Color("disabledButtonBackgroundColor"))
          }
          .contentShape(Rectangle())
          .onTapGesture {
            if !(selectedGender == item) {
              selectedGender = item
            }
          }
        }
      }
    }.navigationBarTitle(Text(""), displayMode: .inline )
  }
}

struct GenderSelectorView_Previews: PreviewProvider {
  static var previews: some View {
    GenderSelectorView(selectedGender: .constant(.male), title: "Test", genders: Gender.allCases)
  }
}
