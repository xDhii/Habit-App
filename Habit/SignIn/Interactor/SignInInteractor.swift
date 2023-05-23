//
//  SignInInteractor.swift
//  Habit
//
//  Created by Adriano Valumin on 23/05/23.
//

import Foundation

class SignInInteractor {
    private let remote: RemoteDataSource = .shared
//    private let local LocalDataSource
}

extension SignInInteractor {
    func login(loginRequest request: SignInRequest, completion: @escaping (SignInResponse?, SignInErrorResponse?) -> Void) {
        remote.login(request: request, completion: completion)
    }
}
