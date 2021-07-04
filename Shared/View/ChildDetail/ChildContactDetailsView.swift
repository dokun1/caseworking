//
//  ChildContactDetailsView.swift
//  CaseWorking
//
//  Created by David Okun on 7/4/21.
//

import SwiftUI

struct ChildContactDetailsView: View {
  var child: Child
  var body: some View {
    VStack(alignment: .leading) {
      ForEach(child.phoneNumbers ?? [], id: \.self) { phoneNumber in
        Text(phoneNumber).frame(height: 30)
      }
      Divider()
      ForEach(child.emailAddresses ?? [], id: \.self) { emailAddress in
        Text(emailAddress).frame(height: 30)
      }
      if child.emergencyContactName != nil {
        Divider()
        VStack(alignment: .leading) {
          Text("Emergency Contact").fontWeight(.heavy).frame(height: 40)
          Text(child.emergencyContactName!)
          Text(child.emergencyContactNumber!)
          
        }
      }
      
    }
  }
}

struct ChildContactDetailsView_Previews: PreviewProvider {
  static var previews: some View {
    ChildContactDetailsView(child: try! Helpers.getRandomMockChild())
  }
}
