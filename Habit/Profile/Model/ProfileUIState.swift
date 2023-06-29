//
//  ProfileUIState.swift
//  Habit
//
//  Created by Adriano Valumin on 29/06/23.
//

import Foundation

enum ProfileUIState {
  case none
  case loading
  case fetchSuccess
  case fetchError(String)
}
