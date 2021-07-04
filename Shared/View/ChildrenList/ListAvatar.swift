//
//  ListAvatar.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ListAvatar: View {
  
  var imageData: Data?
  var imageURL: URL?
  
  private var cellURL: URL {
    if let data = imageData {
      let string = String(data: data, encoding: .utf8)!
      return URL(string: string)!
    } else {
      return imageURL!
    }
  }
  
  var body: some View {
    AsyncImage(url: cellURL) { image in
      image.resizable()
    } placeholder: {
      Color.blue
//      ProgressView().progressViewStyle(CircularProgressViewStyle()).frame(width: 100, height: 100)
    }.frame(width: 100, height: 100)
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.black, lineWidth: 4))
      .padding()
  }
}

struct ListAvatar_Previews: PreviewProvider {
  static var previews: some View {
    ListAvatar(imageData: nil,
               imageURL: Helpers
                  .avatarSampleURL1)
      .previewDevice("iPhone 12")
  }
}
