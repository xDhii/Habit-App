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
    
    func onAppear() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            
            var rows: [HabitCardViewModel] = []
            
            rows.append(HabitCardViewModel(id: 1,
                                           icon: "https://via.placeholder.com/150",
                                           date: "01/01/2023 00:00:00",
                                           name: "Tocar guitarra",
                                           label: "horas",
                                           value: "2",
                                           state: .green))
            
            rows.append(HabitCardViewModel(id: 2,
                                           icon: "https://via.placeholder.com/150",
                                           date: "01/01/2023 00:00:00",
                                           name: "Fazer caminhada",
                                           label: "km",
                                           value: "5",
                                           state: .green))
            
            rows.append(HabitCardViewModel(id: 3,
                                           icon: "https://via.placeholder.com/150",
                                           date: "01/01/2023 00:00:00",
                                           name: "Fazer caminhada",
                                           label: "km",
                                           value: "5",
                                           state: .green))
            
            rows.append(HabitCardViewModel(id: 4,
                                           icon: "https://via.placeholder.com/150",
                                           date: "01/01/2023 00:00:00",
                                           name: "Fazer caminhada",
                                           label: "km",
                                           value: "5",
                                           state: .green))
            
            rows.append(HabitCardViewModel(id: 5,
                                           icon: "https://via.placeholder.com/150",
                                           date: "01/01/2023 00:00:00",
                                           name: "Fazer caminhada",
                                           label: "km",
                                           value: "5",
                                           state: .green))
            
            self.uiState = .fullList(rows)
            
        }
    }
    
}
