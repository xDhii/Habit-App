//
//  ProfileView.swift
//  Habit
//
//  Created by Adriano Valumin on 16/06/23.
//

import SwiftUI

struct ProfileView: View {
  @ObservedObject var viewModel: ProfileViewModel

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
              TextField("Enter your name", text: $viewModel.fullNameValidation.value)
                .keyboardType(.alphabet)
                .multilineTextAlignment(.trailing)
            }

            if viewModel.fullNameValidation.failure {
              Text("Name should have at least 3 characters")
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .foregroundColor(Color("errorColor"))
                .font(.caption)
                .overlay(RoundedRectangle(cornerRadius: 7)
                  .stroke(Color("errorColor"), lineWidth: 1)
                )
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
              TextField("Enter your phone number", text: $viewModel.phoneValidation.value)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
            }

            if viewModel.phoneValidation.failure {
              Text("Invalid phone number")
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .foregroundColor(Color("errorColor"))
                .font(.caption)
                .overlay(RoundedRectangle(cornerRadius: 7)
                  .stroke(Color("errorColor"), lineWidth: 1)
                )
            }

            HStack {
              Text("Birthday")
              TextField("Enter your birthday", text: $viewModel.birthdayValidation.value)
                .multilineTextAlignment(.trailing)
            }

            if viewModel.phoneValidation.failure {
              Text("Birthday should be dd/MM/yyyy")
                .padding(.horizontal, 8)
                .padding(.vertical, 4)
                .foregroundColor(Color("errorColor"))
                .font(.caption)
                .overlay(RoundedRectangle(cornerRadius: 7)
                  .stroke(Color("errorColor"), lineWidth: 1)
                )
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
    ProfileView(viewModel: ProfileViewModel())
  }
}
