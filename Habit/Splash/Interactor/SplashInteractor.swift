//
//  SplashInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 28/05/23.
//

import Combine
import Foundation

class SplashInteractor {
    private let local: LocalDataSource = .shared
}

extension SplashInteractor {
    func fetchAuth() -> Future<UserAuth?, Never> {
        return local.getUserAuth()
    }
}
