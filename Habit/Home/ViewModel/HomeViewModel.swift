//
//  HomeViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

class HomeViewModel: ObservableObject {
}

extension HomeViewModel {
    func habitView() -> some View {
        return HomeViewRouter.makeHabitView()
    }
}
