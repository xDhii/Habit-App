//
//  HabitCardView.swift
//  Habit
//
//  Created by Adriano Valumin on 06/06/23.
//

import SwiftUI

struct HabitCardView: View {
    @State private var action = false

    let viewModel: HabitCardViewModel

    var body: some View {
        ZStack(alignment: .trailing) {
            NavigationLink(
                destination: viewModel.habitDetailView(),
                isActive: self.$action,
                label: {
                    EmptyView()
                }
            )

            Button(action: {
                self.action = true
            }, label: {
                HStack {
                    Image(systemName: "pencil")
                        .padding(.horizontal, 8)

                    Spacer()

                    HStack(alignment: .top) {
                        Spacer()

                        VStack(alignment: .leading, spacing: 4) {
                            Text(viewModel.name)
                                .foregroundColor(Color("primaryText"))

                            Text(viewModel.label)
                                .foregroundColor(Color("secondaryText"))
                                .bold()

                            Text(viewModel.date)
                                .foregroundColor(Color("secondaryText"))
                                .bold()
                        }.frame(maxWidth: 300, alignment: .leading)

                        Spacer()

                        VStack(alignment: .leading, spacing: 4) {
                            Text("Registrado")
                                .foregroundColor(Color("primaryText"))
                                .bold()
                                .multilineTextAlignment(.leading)

                            Text(viewModel.value)
                                .foregroundColor(Color("secondaryText"))
                                .bold()
                                .multilineTextAlignment(.leading)
                        }

                        Spacer()
                    }

                    Spacer()
                }
                .padding()
                .cornerRadius(7)

            })

            Spacer()
            RoundedRectangle(cornerRadius: 7)
                .frame(width: 7)
                .foregroundColor(viewModel.state)

        }.background(
            RoundedRectangle(cornerRadius: 7)
                .stroke(Color("borderColor"), lineWidth: 1.0)
                .shadow(color: Color("shadowColor"), radius: 2, x: 2, y: 2)
        )
        .padding(.horizontal, 4)
        .padding(.vertical, 8)
    }
}

struct HabitCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            List {
                HabitCardView(viewModel: HabitCardViewModel(id: 1,
                                                            icon: "https://via.placeholder.com/150",
                                                            date: "01/01/2023 00:00:00",
                                                            name: "Play Guitar",
                                                            label: "hours",
                                                            value: "2",
                                                            state: .green))

                HabitCardView(viewModel: HabitCardViewModel(id: 1,
                                                            icon: "https://via.placeholder.com/150",
                                                            date: "01/01/2023 00:00:00",
                                                            name: "Play Guitar",
                                                            label: "hours",
                                                            value: "2",
                                                            state: .green))
            }
            .frame(maxWidth: .infinity)
            .navigationTitle("Test")
        }
    }
}
