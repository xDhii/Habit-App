//
//  HabitView.swift
//  Habit
//
//  Created by Adriano Valumin on 30/05/23.
//

import Foundation
import SwiftUI

struct HabitView: View {
  @ObservedObject var viewModel: HabitViewModel

  var body: some View {
    ZStack {
      if case HabitUIState.loading = viewModel.uiState {
        progress
      } else {
        NavigationView {
          ZStack {
            Color("primaryBackgroundColor").ignoresSafeArea()
            ScrollView(showsIndicators: false) {
              VStack(spacing: 12) {
                topContainer
                addButton

                if case HabitUIState.emptyList = viewModel.uiState {
                  VStack {
                    Spacer(minLength: 60)

                    Image(systemName: "exclamationmark.octagon.fill")
                      .resizable()
                      .scaledToFit()
                      .frame(width: 24, height: 24, alignment: .center)
                      .accentColor(Color("primaryIconColor")) // TODO: Check why the color isn't being applied

                    Text("No habits found :(")
                  }

                } else if case let HabitUIState.fullList(rows) = viewModel.uiState {
                  LazyVStack {
                    ForEach(rows, content: HabitCardView.init(viewModel:))
                  }
                  .padding(.horizontal, 8)

                } else if case let HabitUIState.error(msg) = viewModel.uiState {
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
                }
              }
            }.navigationTitle("My Habits")
          }
        }
      }
    }
    .onAppear {
      if !viewModel.opened {
        viewModel.onAppear()
      }
    }
  }
}

extension HabitView {
  var topContainer: some View {
    VStack(alignment: .center, spacing: 12) {
      Image(systemName: "exclamationmark.triangle")
        .resizable()
        .scaledToFit()
        .frame(width: 50, height: 50, alignment: .center)
        .foregroundColor(Color("primaryTextColor"))

      Text(viewModel.title)
        .font(.title.bold())
        .foregroundColor(Color("primaryTitleColor"))

      Text(viewModel.headline)
        .font(.title3.bold())
        .foregroundColor(Color("primaryTextColor"))

      Text(viewModel.desc)
        .font(.subheadline)
        .foregroundColor(Color("secondaryTextColor"))
    }
    .frame(maxWidth: .infinity)
    .padding(.vertical, 32)
    .overlay(
      RoundedRectangle(cornerRadius: 7)
        .stroke(Color("borderColor"), lineWidth: 1))
    .padding(.horizontal, 16)
    .padding(.top, 16)
  }
}

extension HabitView {
  var addButton: some View {
    NavigationLink(
      destination: Text("Screen to add")
        .frame(maxWidth: .infinity, maxHeight: .infinity)) {
      Label("Create Habit", systemImage: "plus.app")
        .modifier(ButtonStyle())
    }
    .padding(.horizontal, 16)
  }
}

extension HabitView {
  var progress: some View {
    ProgressView()
  }
}

struct HabitView_Previews: PreviewProvider {
  static var previews: some View {
    HomeViewRouter.makeHabitView(viewModel: HabitViewModel(interactor: HabitInteractor()))
  }
}
