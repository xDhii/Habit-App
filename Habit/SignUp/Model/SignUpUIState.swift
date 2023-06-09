//
//  SignUpUIState.swift
//  Habit
//
//  Created by Adriano Valumin on 17/04/23.
//

import Foundation

enum SignUpUIState: Equatable {
  case none
  case loading
  case success
  case error(String)
}
