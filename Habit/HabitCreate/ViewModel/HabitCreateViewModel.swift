//
//  HabitCreateViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import Combine
import Foundation
import SwiftUI

class HabitCreateViewModel: ObservableObject {
  @Published var uiState: HabitDetailUIState = .none
  @Published var name: String = ""
  @Published var label: String = ""
  @Published var image: Image? = Image(systemName: "camera.fill")
  @Published var imageData: Data? = nil

  private var cancellable: AnyCancellable?
  var cancellables = Set<AnyCancellable>()
  var habitPublisher: PassthroughSubject<Bool, Never>?

  let interactor: HabitDetailInteractor

  init(interactor: HabitDetailInteractor) {
    self.interactor = interactor
  }

  deinit {
    cancellable?.cancel()
    for cancellable in cancellables {
      cancellable.cancel()
    }
  }

  func save() {
    uiState = .loading
  }
}
