//
//  ContentView.swift
//  Shared
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ContentView: View {
  @State private var searchText = ""
  @State var children: [Child]
  
  private func filterChildren(searchTerm: String) {
    if !searchTerm.isEmpty {
      children = try! Helpers.getMockChildren().filter { $0.firstName.contains(searchTerm) || $0.lastName.contains(searchTerm) }
    } else {
      children = try! Helpers.getMockChildren()
    }
  }
  
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
        .searchable("Search by name...", text: $searchText)
        .onChange(of: searchText, perform: filterChildren)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView(children: try! Helpers.getMockChildren())
  }
}
