//
//  ChildCell.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import SwiftUI

struct ChildCell: View {
  var child: Child
  
  var body: some View {
    HStack {
      ListAvatar(imageURL: child.avatarURL)
      VStack(alignment: .leading) {
        Text("\(child.firstName) \(child.lastName)")
          .font(.title)
        Text("DOB: \(child.listDOB)")
        Text("Case ID: \(child.caseID)")
        Text("Medicaid ID: \(child.medicaidID)")
      }
    }
  }
}

struct ChildCell_Previews: PreviewProvider {
  static var previews: some View {
    ChildCell(child: Helpers.mockChild3).previewDevice("iPhone 12")
  }
}
