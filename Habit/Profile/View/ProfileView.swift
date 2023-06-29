//
//  ProfileView.swift
//  Habit
//
//  Created by Adriano Valumin on 16/06/23.
//

import SwiftUI

struct ProfileView: View {
  @ObservedObject var viewModel: ProfileViewModel

  var disableDone: Bool {
    viewModel.fullNameValidation.failure ||
      viewModel.phoneValidation.failure ||
      viewModel.birthdayValidation.failure
  }

  var body: some View {
    
    ZStack {
      
      if case ProfileUIState.loading = viewModel.uiState {
        ProgressView()
      } else {
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
                  TextField("", text: $viewModel.email)
                    .disabled(true)
                    .foregroundColor(Color("disabledButtonTextColor"))
                    .multilineTextAlignment(.trailing)
                }
                
                HStack {
                  Text("CPF")
                  TextField("", text: $viewModel.document)
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
                  destination: GenderSelectorView(selectedGender: $viewModel.gender,
                                                  title: "Select your gender",
                                                  genders: Gender.allCases)) {
                                                    HStack {
                                                      Text("Gender")
                                                      Spacer()
                                                      Text(viewModel.gender?.rawValue ?? "")
                                                    }

                                                  }
              }
            }
            .background(Color("primaryBackgroundColor"))
            .scrollContentBackground(.hidden)
            
            .navigationBarTitle(Text("Edit Profile"), displayMode: .automatic)
            .navigationBarItems(trailing: Button(action: {}, label: {
              Image(systemName: "checkmark")
                .foregroundColor(Color("secondaryIconColor"))
            })
              .opacity(disableDone ? 0 : 1)
            )
          }
        }
      }
      if case ProfileUIState.fetchError(let value) = viewModel.uiState {
        Text("")
          .alert(isPresented: .constant(true), content: {
            Alert(title: Text("Habit"),
                  message: Text(value),
                  dismissButton: .default(Text("Ok")) {
              
            })
          })
      }
      
    }.onAppear(perform: viewModel.fetchUser)
  }
}

struct ProfileView_Preview: PreviewProvider {
  static var previews: some View {
    ProfileView(viewModel: ProfileViewModel(interactor: ProfileInteractor()))
  }
}
