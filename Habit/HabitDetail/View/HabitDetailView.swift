//
//  HabitDetailView.swift
//  Habit
//
//  Created by Adriano Valumin on 10/06/23.
//

import SwiftUI

struct HabitDetailView: View {
    @ObservedObject var viewModel: HabitDetailViewModel

    init(viewModel: HabitDetailViewModel) {
        self.viewModel = viewModel
    }

    var body: some View {
        ScrollView(showsIndicators: false, content: {
            VStack(alignment: .center, spacing: 12, content: {
                Text(viewModel.name)
                    .foregroundColor(Color("primaryText"))
                    .font(.title.bold())

                Text("Unit: \(viewModel.label)")
                    .foregroundColor(Color("secondaryText"))
                    .multilineTextAlignment(.center)

            })

            VStack(content: {
                TextField("Write the value", text: $viewModel.value)
                    .multilineTextAlignment(.center)
                    .textFieldStyle(CustomTextFieldStyle())
                    .keyboardType(.numberPad)

                Divider()
                    .frame(height: 1)
                    .background(Color("primaryButtonBackgroundColor").opacity(0.5))
                    .padding(.bottom, 8)
            }).padding(.horizontal, 32)
            Text("Checkpoints should be logged every 24h.")
                .foregroundColor(Color("secondaryText"))

            LoadingButtonView(action: {
            }, text: "Save",
            disabled: self.viewModel.value.isEmpty,
            showProgress: self.viewModel.uiState == .loading)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)

            Button("Cancel") {
                // dismiss
            }
            .modifier(ButtonStyle())
            .padding(.horizontal, 16)

            Spacer()
        })
        .padding(.horizontal, 8)
        .padding(.top, 32)
    }
}

struct HabitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        HabitDetailView(viewModel: HabitDetailViewModel(id: 1,
                                                        name: "Play Guitar",
                                                        label: "Hours"))
    }
}
