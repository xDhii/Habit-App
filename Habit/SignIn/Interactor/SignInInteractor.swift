//
//  SignInInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 23/05/23.
//

import Combine
import Foundation

class SignInInteractor {
  private let remote: SignInRemoteDataSource = .shared
  private let local: LocalDataSource = .shared
}

extension SignInInteractor {
  func login(loginRequest request: SignInRequest) -> Future<SignInResponse, AppError> {
    return remote.login(request: request)
  }

  func insertAuth(userAuth: UserAuth) {
    local.insertUserAuth(userAuth: userAuth)
  }
}
