//
//  ImageView.swift
//  Habit
//
//  Created by Adriano Valumin on 15/06/23.
//

import Combine
import SwiftUI

struct ImageView: View {
    
    @State var image: UIImage = UIImage()
    @ObservedObject var imageLoader: ImageLoader
    
    init(url: String) {
        imageLoader = ImageLoader(url: url)
    }
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .onReceive(imageLoader.didChange, perform: { data in
                self.image = UIImage(data: data) ?? UIImage()
            })
    }
}

class ImageLoader: ObservableObject {
    
    var didChange = PassthroughSubject<Data, Never>()
    
    var data = Data() {
        didSet {
            didChange.send(data)
        }
    }
    
    init(url: String) {
        guard let url = URL(string: url) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.data = data
            }
        }
        task.resume()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(url: "https://www.google.com/images/branding/googlelogo/2x/googlelogo_light_color_272x92dp.png")
    }
}
