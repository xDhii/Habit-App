//
//  ProfileView.swift
//  Habit
//
//  Created by Adriano Valumin on 16/06/23.
//

import SwiftUI

struct ProfileView: View {
  @State var fullName: String = ""
  @State var email: String = "test@test.com"
  @State var cpf: String = "000.111.222-33"
  @State var phone: String = "(11) 91234-5678"
  @State var birthday: String = "01/10/1990"
  @State var selectedGender: Gender? = .male

  var body: some View {
    NavigationView {
      VStack {
        Form {
          Section(header: Text("User data")) {
            HStack {
              Text("Name")
              Spacer()
              TextField("Insert your name", text: $fullName)
                .keyboardType(.alphabet)
                .multilineTextAlignment(.trailing)
            }

            HStack {
              Text("E-mail")
              Spacer()
              TextField("", text: $email)
                .disabled(true)
                .foregroundColor(Color("disabledButtonTextColor"))
                .multilineTextAlignment(.trailing)
            }

            HStack {
              Text("CPF")
              TextField("", text: $cpf)
                .disabled(true)
                .foregroundColor(Color("disabledButtonTextColor"))
                .multilineTextAlignment(.trailing)
            }

            HStack {
              Text("Phone")
              TextField("Enter your phone number", text: $phone)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
            }

            HStack {
              Text("Birthday")
              TextField("Enter your birthday", text: $birthday)
                .multilineTextAlignment(.trailing)
            }

            NavigationLink(
              destination: GenderSelectorView(selectedGender: $selectedGender,
                                              title: "Select your gender",
                                              genders: Gender.allCases)) {
              Text("Gender")
              Spacer()
              Text(selectedGender?.rawValue ?? "")
            }
          }
        }
        .background(Color("primaryBackgroundColor"))
        .scrollContentBackground(.hidden)

        .navigationBarTitle(Text("Edit Profile"), displayMode: .automatic)
      }
    }
  }
}

struct ProfileView_Preview: PreviewProvider {
  static var previews: some View {
    ProfileView()
  }
}
