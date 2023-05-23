//
//  SignInModel.swift
//  Habit
//
//  Created by Adriano Valumin on 13/04/23.
//

import Foundation

enum SignInUIState: Equatable {
    case none
    case loading
    case goToHomeScreen
    case error(String)
}
