//
//  ProfileInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 29/06/23.
//

import Combine
import Foundation

class ProfileInteractor {
  private let remote: ProfileRemoteDataSource = .shared
}

extension ProfileInteractor {
  func fetchUser() -> Future<ProfileResponse, AppError> {
    return remote.fetchUser()
  }
}
