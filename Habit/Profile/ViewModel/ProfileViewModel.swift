//
//  ProfileViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 26/06/23.
//

import Combine
import Foundation

class ProfileViewModel: ObservableObject {
  @Published var uiState: ProfileUIState = .none

  var userId: Int?
  @Published var fullNameValidation = FullNameValidation()
  @Published var email = ""
  @Published var document = ""
  @Published var gender: Gender?
  @Published var phoneValidation = PhoneValidation()
  @Published var birthdayValidation = BirthdayValidation()

  private var cancellableFetch: AnyCancellable?
  private var cancellableUpdate: AnyCancellable?
  private let interactor: ProfileInteractor

  init(interactor: ProfileInteractor) {
    self.interactor = interactor
  }

  deinit {
    cancellableFetch?.cancel()
    cancellableUpdate?.cancel()
  }

  func fetchUser() {
    uiState = .loading

    cancellableFetch = interactor.fetchUser()
      .receive(on: DispatchQueue.main)
      .sink(receiveCompletion: { completion in
        switch completion {
        case let .failure(appError):
          self.uiState = .fetchError(appError.message)
          break
        case .finished:
          break
        }
      }, receiveValue: { response in
        self.userId = response.id
        self.email = response.email
        self.document = response.document
        self.gender = Gender.allCases[response.gender]
        self.fullNameValidation.value = response.fullName
        self.phoneValidation.value = response.phone

        let formatter = DateFormatter()

        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.dateFormat = "yyyy-MM-dd"
        let dateFormatted = formatter.date(from: response.birthday)

        guard let dateFormatted = dateFormatted else {
          self.uiState = .fetchError("Invalid date \(response.birthday)")
          return
        }

        formatter.dateFormat = "dd/MM/yyyy"
        let birthday = formatter.string(from: dateFormatted)

        self.birthdayValidation.value = birthday

        self.uiState = .fetchSuccess

      })
  }

  func updateUser() {
    uiState = .updateLoading
    guard let userId = userId,
          let gender = gender else { return }

    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = "dd/MM/yyyy"

    let dateFormatted = formatter.date(from: birthdayValidation.value)

    guard let dateFormatted = dateFormatted else {
      uiState = .updateError("Invalid date \(birthdayValidation.value)")
      return
    }

    formatter.dateFormat = "yyyy-MM-dd"
    let birthday = formatter.string(from: dateFormatted)

    cancellableUpdate = interactor.updateUser(userId: userId,
                                              profileRequest: ProfileRequest(fullName: fullNameValidation.value,
                                                                             phone: phoneValidation.value,
                                                                             birthday: birthday,
                                                                             gender: gender.index))

      .receive(on: DispatchQueue.main)
      .sink(receiveCompletion: { completion in
        switch completion {
        case let .failure(appError):
          self.uiState = .updateError(appError.message)
          break
        case .finished:
          break
        }
      }, receiveValue: { _ in
        self.uiState = .updateSuccess

      })
  }
}

class FullNameValidation: ObservableObject {
  @Published var failure = false

  var value: String = "Adriano" {
    didSet {
      failure = value.count < 3
    }
  }
}

class PhoneValidation: ObservableObject {
  @Published var failure = false

  var value: String = "11999999999" {
    didSet {
      failure = value.count < 14 || value.count >= 15
    }
  }
}

class BirthdayValidation: ObservableObject {
  @Published var failure = false

  var value: String = "01/10/1990" {
    didSet {
      failure = value.count != 10
    }
  }
}
