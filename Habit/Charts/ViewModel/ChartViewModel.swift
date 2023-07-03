//
//  ChartViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 01/07/23.
//

import Charts
import Foundation
import SwiftUI

class ChartViewModel: ObservableObject {
  @Published var entries: [ChartDataEntry] = [
    ChartDataEntry(x: 1, y: 2),
    ChartDataEntry(x: 2, y: 1),
    ChartDataEntry(x: 3, y: 8),
    ChartDataEntry(x: 4, y: 5),
    ChartDataEntry(x: 5, y: 9),
    ChartDataEntry(x: 6, y: 0),
    ChartDataEntry(x: 7, y: 4),
    ChartDataEntry(x: 8, y: 6),
    ChartDataEntry(x: 9, y: 4),
    ChartDataEntry(x: 10, y: 9),
  ]

  @Published var dates = [
    "2023-06-20",
    "2023-06-21",
    "2023-06-22",
    "2023-06-23",
    "2023-06-24",
    "2023-06-25",
    "2023-06-26",
    "2023-06-27",
    "2023-06-28",
    "2023-06-29",

  ]
}
