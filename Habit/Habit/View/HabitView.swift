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

                                    Text("No habits found :(")
                                }

                            } else if case HabitUIState.fullList = viewModel.uiState {
                            } else if case HabitUIState.error = viewModel.uiState {
                            }
                        }
                    }.navigationTitle("My Habits")
                }
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

            Text(viewModel.title)
                .font(.title.bold())
                .foregroundColor(Color("primaryTitle"))

            Text(viewModel.headline)
                .font(.title3.bold())
                .foregroundColor(Color("primaryText"))

            Text(viewModel.desc)
                .font(.subheadline)
                .foregroundColor(Color("secondaryText"))
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 32)
        .overlay(
            RoundedRectangle(cornerRadius: 6)
                .stroke(Color("borderColor"), lineWidth: 1)
        )
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
        HomeViewRouter.makeHabitView()
    }
}
