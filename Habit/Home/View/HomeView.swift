//
//  HomeView.swift
//  Habit
//
//  Created by Adriano Valumin on 15/04/23.
//

import SwiftUI

struct HomeView: View {
  @ObservedObject var viewModel: HomeViewModel

  @State var selection = 0

  var body: some View {
    TabView(selection: $selection) {
      //          Habits Tab
      viewModel.habitView()
        .tabItem {
          Image(systemName: "square.grid.2x2")
          Text("Habits")

        }.tag(0)
      //          Charts Tab
      viewModel.habitForChartView()
        .tabItem {
          Image(systemName: "chart.bar")
          Text("Charts")
        }.tag(1)
      //          Profile Tab
      viewModel.profileView()
        .tabItem {
          Image(systemName: "person.crop.circle")
          Text("Profile")
        }.tag(2)
    }
    .accentColor(Color("primaryIconColor"))
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView(viewModel: HomeViewModel())
  }
}
