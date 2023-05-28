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
        rawValue
    }

    var index: Self.AllCases.Index {
        return Self.allCases.firstIndex { self == $0 } ?? 0
    }
}
