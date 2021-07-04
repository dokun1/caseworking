//
//  ContentView.swift
//  Shared
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ContentView: View {
  @State var searchText = ""
  @State var children: [Child]
  var body: some View {
    NavigationView {
      List(children) { child in
        NavigationLink(
          destination: ChildDetailView(child: child),
          label: {
          ChildCell(child: child)
        }).isDetailLink(true)
      }.listStyle(InsetGroupedListStyle())
        .navigationBarTitle("Children")
        .searchable(text: $searchText)
        .onChange(of: searchText) { searchText in
          if !searchText.isEmpty {
            children = try! Helpers.getMockChildren().filter { $0.firstName.contains(searchText) || $0.lastName.contains(searchText) }
          } else {
            children = try! Helpers.getMockChildren()
          }
        }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(children: try! Helpers.getMockChildren())
  }
}
