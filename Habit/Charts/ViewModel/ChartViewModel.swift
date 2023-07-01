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
    "20/06/2023",
    "21/06/2023",
    "22/06/2023",
    "23/06/2023",
    "24/06/2023",
    "25/06/2023",
    "26/06/2023",
    "27/06/2023",
    "28/06/2023",
    "29/06/2023",
  ]
}
