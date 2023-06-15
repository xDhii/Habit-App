//
//  HabitCardViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 11/06/23.
//

import Combine
import SwiftUI

enum HabitCardViewRouter {
    static func makeHabitDetailView(id: Int,
                                    name: String,
                                    label: String,
                                    habitPublisher: PassthroughSubject<Bool, Never>) -> some View {
        let viewModel = HabitDetailViewModel(id: id,
                                             name: name,
                                             label: label,
                                             interactor: HabitDetailInteractor())

        viewModel.habitPublisher = habitPublisher
        return HabitDetailView(viewModel: viewModel)
    }
}
