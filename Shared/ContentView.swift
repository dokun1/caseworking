//
//  ContentView.swift
//  Shared
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ContentView: View {
  var mockItems = try! Helpers.getMockChildren()
  var body: some View {
    NavigationView {
      List(mockItems) { child in
        NavigationLink(
          destination: ChildDetailView(child: child),
          label: {
            ChildCell(child: child)
        }).isDetailLink(true)
      }.listStyle(InsetGroupedListStyle())
      .navigationBarTitle("Children")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
