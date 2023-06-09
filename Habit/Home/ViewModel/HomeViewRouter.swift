//
//  HomeViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Foundation
import SwiftUI

enum HomeViewRouter {
    static func makeHabitView() -> some View {
        let viewModel = HabitViewModel(interactor: HabitInteractor())
        return HabitView(viewModel: viewModel)
    }
}
