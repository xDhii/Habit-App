//
//  HabitViewRouter.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import Combine
import Foundation
import SwiftUI

enum HabitViewRouter {
  static func makeHabitCreateView(habitPublisher: PassthroughSubject<Bool, Never>) -> some View {
    let viewModel = HabitCreateViewModel(interactor: HabitCreateInteractor())
    viewModel.habitPublisher = habitPublisher
    return HabitCreateView(viewModel: viewModel)
  }
}
