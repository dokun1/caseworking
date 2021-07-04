//
//  ChildDetailView.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ChildDetailView: View {
  var child: Child
  
  var body: some View {
    NavigationView {
      ChildDetailList(child: child)
    }.navigationTitle(child.firstName + " " + child.lastName)
  }
}

struct ChildDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ChildDetailView(child: try! Helpers.getRandomMockChild()).previewDevice("iPhone 12 Pro Max")
  }
}
