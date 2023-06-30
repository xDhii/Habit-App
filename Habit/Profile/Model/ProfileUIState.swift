//
//  ProfileUIState.swift
//  Habit
//
//  Created by Adriano Valumin on 29/06/23.
//

import Foundation

enum ProfileUIState: Equatable {
  case none
  case loading
  case fetchSuccess
  case fetchError(String)

  case updateLoading
  case updateSuccess
  case updateError(String)
}
