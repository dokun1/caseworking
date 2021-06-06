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
      VStack {
        ListAvatar(imageURL: child.avatarURL)
        Text(child.currentLocation!.addressLineOne)
        HStack {
          Text(child.currentLocation!.city)
          Text(child.currentLocation!.state)
          Text(child.currentLocation!.zipcode)
        }
      }
    }.navigationTitle(child.firstName)
    .navigationBarItems(trailing: Button(action: {
      // Default button action
    }, label: {
      Image(systemName: "ellipsis.circle.fill")
    })
    .contextMenu(
      ContextMenu(menuItems: {
        Button("Assign Flags", action: {})
        Button("Add Notes", action: {})
        Button("Update Address", action: {})
      })
    ))
  }
}

struct ChildDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ChildDetailView(child: Helpers.mockChild1).previewDevice("iPhone 12")
  }
}
