//
//  ChartUIState.swift
//  Habit
//
//  Created by Adriano Valumin on 03/07/23.
//

import Foundation

enum ChartUIState: Equatable {
  case loading
  case emptyChart
  case fullChart
  case error(String)
}
