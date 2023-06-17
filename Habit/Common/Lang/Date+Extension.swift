//
//  Date+Extension.swift
//  Habit
//
//  Created by Adriano Valumin on 08/06/23.
//

import Foundation

extension Date {
  func toString(destPattern dest: String) -> String {
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "en_US_POSIX")
    formatter.dateFormat = dest

    return formatter.string(from: self)
  }
}
