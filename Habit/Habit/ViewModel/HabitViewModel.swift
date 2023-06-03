//
//  HabitViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Foundation

class HabitViewModel: ObservableObject {
    @Published var uiState: HabitUIState = .emptyList
    @Published var title: String = "Title"
    @Published var headline: String = "headline"
    @Published var desc: String = "desc"
}
