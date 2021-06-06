//
//  ListAvatar.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI
import SDWebImageSwiftUI

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
    WebImage(url: cellURL)
      .resizable()
      .indicator(.activity)
      .animation(.default)
      .aspectRatio(contentMode: .fill)
      .frame(width: 100, height: 100)
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
