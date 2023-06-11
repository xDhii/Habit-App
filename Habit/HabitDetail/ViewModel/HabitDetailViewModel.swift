//
//  HabitDetailViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 10/06/23.
//

import Foundation
import SwiftUI

class HabitDetailViewModel: ObservableObject {
    
    @Published var uiState: HabitDetailUIState = .none
    @Published var value: String = ""
    
    let id: Int
    let name: String
    let label: String
    
    init(id: Int, name: String, label: String) {
        self.id = id
        self.name = name
        self.label = label
    }
}
