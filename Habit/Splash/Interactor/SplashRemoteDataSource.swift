//
//  SplashRemoteDataSource.swift
//  Habit
//
//  Created by Adriano Valumin on 28/05/23.
//

import Combine
import Foundation

class SplashRemoteDataSource {
    static var shared: SplashRemoteDataSource = SplashRemoteDataSource()
    
    private init() {
        
    }
    
    func refreshToken(request: RefreshRequest) -> Future<SignInResponse, AppError> {
        return Future<SignInResponse, AppError> { promise in
            WebService.call(path: .refreshToken, method: .put, body: request) { result in
                switch result {
                case .failure(let error, let data):
                    if let data = data {
                        if error == .unauthorized {
                            let decoder = JSONDecoder()
                            let response = try? decoder.decode(SignInErrorResponse.self, from: data)
                            
                            promise(.failure(AppError.response(message: response?.detail.message ?? "Unkown Error")))
                        }
                    }
                    break
                case .success(let data):
                    let decoder = JSONDecoder()
                    let response = try? decoder.decode(SignInResponse.self, from: data)
                    
                    guard let response = response else {
                        return
                    }
                    promise(.success(response))
                    break
                }
            }
        }
    }
}
