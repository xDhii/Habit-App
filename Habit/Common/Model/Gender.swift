//
//  Gender.swift
//  Habit
//
//  Created by Adriano Valumin on 17/04/23.
//

import SwiftUI

enum Gender: String, CaseIterable, Identifiable {
    case male = "Masculino"
    case female = "Feminino"
    
    var id: String {
        self.rawValue
    }
}
