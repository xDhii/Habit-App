//
//  ChartsView.swift
//  Habit
//
//  Created by Adriano Valumin on 30/06/23.
//

import Charts
import SwiftUI

struct ChartView: View {
  @ObservedObject var viewModel: ChartViewModel

  var body: some View {
    ZStack {
      Color("primaryBackgroundColor").ignoresSafeArea()
      BoxChartView(entries: $viewModel.entries, dates: $viewModel.dates)
        .frame(maxWidth: .infinity, maxHeight: 350)
    }
  }
}

struct ChartView_Previews: PreviewProvider {
  static var previews: some View {
    ChartView(viewModel: ChartViewModel())
  }
}
