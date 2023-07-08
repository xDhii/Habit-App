//
//  HabitCreateView.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import SwiftUI

struct HabitCreateView: View {
  @ObservedObject var viewModel: HabitCreateViewModel
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  @State private var shouldPresentCamera = false

  init(viewModel: HabitCreateViewModel) {
    self.viewModel = viewModel
  }

  var body: some View {
    ZStack {
      Color("primaryBackgroundColor")
        .ignoresSafeArea()

      ScrollView(showsIndicators: false, content: {
        VStack(alignment: .center, spacing: 12, content: {
          Button {
            self.shouldPresentCamera = true
          } label: {
            VStack {
              Image(systemName: "camera.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .foregroundColor(Color("primaryIconColor"))

              Text("Tap here to attach an image")
                .foregroundColor(Color("primaryTitleColor"))
            }
          }

        })
        .padding(.bottom, 12)

        VStack(content: {
          TextField("Insert your new habit name", text: $viewModel.name)
            .multilineTextAlignment(.center)
            .textFieldStyle(CustomTextFieldStyle())
        }).padding(.horizontal, 32)

        VStack(content: {
          TextField("Insert your habit unit (ex: km)", text: $viewModel.label)
            .multilineTextAlignment(.center)
            .textFieldStyle(CustomTextFieldStyle())

          Divider()
            .frame(height: 1)
            .background(Color("borderColor").opacity(0.5))
            .padding(.bottom, 8)
        }).padding(.horizontal, 32)

        LoadingButtonView(action: {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            viewModel.save()
          }
        }, text: "Save",
        disabled: self.viewModel.name.isEmpty || self.viewModel.label.isEmpty,
        showProgress: self.viewModel.uiState == .loading)
          .padding(.horizontal, 12)
          .padding(.vertical, 8)

        Button("Cancel") {
          DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            withAnimation(.easeOut(duration: 0.15)) {
              self.presentationMode.wrappedValue.dismiss()
            }
          }
        }
        .modifier(ButtonStyle())
        .padding(.horizontal, 12)

        Spacer()
      })
      .padding(.horizontal, 8)
      .padding(.top, 32)
    }
  }
}

struct HabitCreateView_Previews: PreviewProvider {
  static var previews: some View {
    HabitCreateView(viewModel: HabitCreateViewModel(interactor: HabitDetailInteractor()))
//    HabitDetailView(viewModel: HabitDetailViewModel(id: 1,
//                                                    name: "Play Guitar",
//                                                    label: "Hours",
//                                                    interactor: HabitDetailInteractor()))
  }
}
