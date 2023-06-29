  //
  //  HabitCardView.swift
  //  Habit
  //
  //  Created by Adriano Valumin on 06/06/23.
  //

import Combine
import SwiftUI

struct HabitCardView: View {
  @State private var action = false
  
  let viewModel: HabitCardViewModel
  
  var body: some View {
    ZStack(alignment: .trailing) {
      Color("secondaryBackgroundColor")
        .cornerRadius(7)
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
          if viewModel.icon != "" {
            ImageView(url: viewModel.icon)
              .aspectRatio(contentMode: .fill)
              .frame(width: 48, height: 48)
              .cornerRadius(7)
              .clipped()
          } else {
            Image(systemName: "pencil")
              .padding(.horizontal, 8)
          }
          
          Spacer()
          
          HStack(alignment: .top) {
            Spacer()
            
            VStack(alignment: .leading, spacing: 4) {
              Text(viewModel.name)
                .foregroundColor(Color("primaryTextColor"))
                .bold()
              
              Text(viewModel.label)
                .foregroundColor(Color("secondaryTextColor"))
                .bold()
              
              Text(viewModel.date)
                .foregroundColor(Color("secondaryTextColor"))
                .bold()
            }.frame(maxWidth: 300, alignment: .leading)
            
            Spacer()
            
            VStack(alignment: .leading, spacing: 4) {
              Text("Registered")
                .foregroundColor(Color("primaryTextColor"))
                .bold()
                .multilineTextAlignment(.leading)
              
              Text(viewModel.value)
                .foregroundColor(Color("secondaryTextColor"))
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
      .background(alignment: .leading) {
        ImageView(url: viewModel.icon)
          .cornerRadius(7)
          .scaledToFit()
          .opacity(0.5)
          .mask(LinearGradient(gradient: Gradient(colors: [.black, .clear]), startPoint: .leading, endPoint: .trailing))
          .padding(.trailing)
      }
      
      Spacer()
      Rectangle()
        .frame(width: 10)
        .clipShape(
          .rect(
            bottomTrailingRadius: 7,
            topTrailingRadius: 7
          ))
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
                                                    state: .green,
                                                    habitPublisher: PassthroughSubject<Bool, Never>()))
      }
      .frame(maxWidth: .infinity)
      .navigationTitle("Test")
    }
  }
}
