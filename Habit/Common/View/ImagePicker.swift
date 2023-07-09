//
//  ImagePicker.swift
//  Habit
//
//  Created by Adriano Valumin on 08/07/23.
//

import Foundation
import SwiftUI
import UIKit

struct ImagePickerView: UIViewControllerRepresentable {
  @Binding var isPresented: Bool
  @Binding var image: Image?
  @Binding var imageData: Data?

  var sourceType: UIImagePickerController.SourceType = .photoLibrary

  func makeCoordinator() -> ImagePickerViewCoordinator {
    return ImagePickerViewCoordinator(isPresented: $isPresented, image: $image, imageData: $imageData)
  }

  func makeUIViewController(context: Context) -> UIImagePickerController {
    let pickerController = UIImagePickerController()

    if UIImagePickerController.isSourceTypeAvailable(sourceType) {
      pickerController.sourceType = .photoLibrary
    } else {
      pickerController.sourceType = sourceType
    }

    pickerController.delegate = context.coordinator

    return pickerController
  }

  func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
  }
}

class ImagePickerViewCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
  @Binding var isPresented: Bool
  @Binding var image: Image?
  @Binding var imageData: Data?

  init(isPresented: Binding<Bool>, image: Binding<Image?>, imageData: Binding<Data?>) {
    _isPresented = isPresented
    _image = image
    _imageData = imageData
  }

  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any]) {
    if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
      
      let width: CGFloat = 420.0
      let canvas = CGSize(width: width, height: CGFloat(ceil(width / image.size.width * image.size.height)))
      
      let imgResized = UIGraphicsImageRenderer(size: canvas, format: image.imageRendererFormat).image { _ in
        image.draw(in: CGRect(origin: .zero, size: canvas))
      }
      
      self.image = Image(uiImage: imgResized)
      imageData = imgResized.jpegData(compressionQuality: 0.2)
    }
    isPresented = false
  }

  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    isPresented = false
  }
}
