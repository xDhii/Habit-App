//
//  HabitViewModel.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Combine
import Foundation
import SwiftUI

class HabitViewModel: ObservableObject {
    @Published var uiState: HabitUIState = .loading
    @Published var title: String = ""
    @Published var headline: String = ""
    @Published var desc: String = ""
    @Published var opened: Bool = false

    private var cancellableRequest: AnyCancellable?
    private let interactor: HabitInteractor

    init(interactor: HabitInteractor) {
        self.interactor = interactor
    }

    deinit {
        cancellableRequest?.cancel()
    }

    func onAppear() {
        opened = true
        uiState = .loading

        cancellableRequest = interactor.fetchHabits()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                switch completion {
                case let .failure(appError):
                    self.uiState = .error(appError.message)
                    break
                case .finished:
                    break
                }
            }, receiveValue: { response in
                if response.isEmpty {
                    self.uiState = .emptyList
                    self.title = ""
                    self.headline = "Watch out!"
                    self.desc = "You still don't have any Habits"
                } else {
                    self.uiState = .fullList(
                        response.map {
                            let lastDate = $0.lastDate?.toDate(sourcePattern: "yyyy-MM-dd'T'HH:mm:ss",
                                                               destPattern: "dd/MM/yyyy HH:mm") ?? ""

                            var state = Color.green
                            self.title = "Congrats!"
                            self.headline = "You're up to date"
                            self.desc = ""

                            let dateToCompare = $0.lastDate?.toDate(sourcePatterns: "yyyy-MM-dd'T'HH:mm:ss") ?? Date()
                            if dateToCompare < Date() {
                                state = .red
                                self.title = "Hey"
                                self.headline = "Watch out!"
                                self.desc = "You're late on your Habits!"
                            }

                            return HabitCardViewModel(id: $0.id,
                                                      icon: $0.iconUrl ?? "",
                                                      date: lastDate,
                                                      name: $0.name,
                                                      label: $0.label,
                                                      value: "\($0.value ?? 0)",
                                                      state: state)
                        }
                    )
                }
            })
    }
}
