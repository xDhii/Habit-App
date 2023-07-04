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
      VStack {
        if case ChartUIState.loading = viewModel.uiState {
          ProgressView()
        } else {
          if case ChartUIState.emptyChart = viewModel.uiState {
            Image(systemName: "exclamationmark.octagon.fill")
              .resizable()
              .scaledToFit()
              .frame(width: 24, height: 24, alignment: .center)
              .accentColor(Color("primaryIconColor"))

            Text("No habits found :(")

          } else if case let ChartUIState.error(msg) = viewModel.uiState {
            Text("")
              .alert(isPresented: .constant(true)) {
                Alert(
                  title: Text("Ops! \(msg)"),
                  message: Text("An error occurred"),
                  primaryButton: .default(Text("Try again")) {
                    viewModel.onAppear()
                  },
                  secondaryButton: .cancel()
                )
              }
          } else {
            BoxChartView(entries: $viewModel.entries, dates: $viewModel.dates)
              .frame(maxWidth: .infinity, maxHeight: 350)
          }
        }
      }
    }.onAppear(perform: viewModel.onAppear)
  }
}

struct ChartView_Previews: PreviewProvider {
  static var previews: some View {
    HabitCardViewRouter.makeChartView(id: 1)
  }
}
