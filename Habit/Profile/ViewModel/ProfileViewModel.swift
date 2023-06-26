//
//  ProfileViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 26/06/23.
//

import Foundation

class ProfileViewModel: ObservableObject {
  @Published var fullNameValidation = FullNameValidation()
  @Published var phoneValidation = PhoneValidation()
  @Published var birthdayValidation = BirthdayValidation()
}

class FullNameValidation: ObservableObject {
  @Published var failure = false

  var value: String = "" {
    didSet {
      failure = value.count < 3
    }
  }
}

class PhoneValidation: ObservableObject {
  @Published var failure = false

  var value: String = "" {
    didSet {
      failure = value.count < 10 || value.count >= 12
    }
  }
}

class BirthdayValidation: ObservableObject {
  @Published var failure = false

  var value: String = "" {
    didSet {
      failure = value.count != 10
    }
  }
}
