//
//  HabitCardViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 11/06/23.
//

import SwiftUI

enum HabitCardViewRouter {
    static func makeHabitDetailView(id: Int, name: String, label: String) -> some View {
        let viewModel = HabitDetailViewModel(id: id, name: name, label: label)
        return HabitDetailView(viewModel: viewModel)
    }
}
