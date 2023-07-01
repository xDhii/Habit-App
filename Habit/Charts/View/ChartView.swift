//
//  ChartsView.swift
//  Habit
//
//  Created by Adriano Valumin on 30/06/23.
//

import SwiftUI

struct ChartView: View {
  var body: some View {
    TestView()
      .frame(maxWidth: .infinity,
             maxHeight: 40,
             alignment: .leading)
      .background(Color.red)
  }
}

struct TestView: UIViewRepresentable {
  typealias UIViewType = UILabel

  func makeUIView(context: Context) -> UILabel {
    let lb = UILabel()
    lb.backgroundColor = UIColor.red
    lb.text = "Hello 2"
    return lb
  }

  func updateUIView(_ uiView: UILabel, context: Context) {
  }
}

struct ChartView_Previews: PreviewProvider {
  static var previews: some View {
    ChartView()
  }
}
