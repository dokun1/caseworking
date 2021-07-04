//
//  ChildDetailList.swift
//  CaseWorking
//
//  Created by David Okun on 7/4/21.
//

import SwiftUI

struct ChildDetailList: View {
  @State var child: Child
  var body: some View {
    List {
      Section("Case ID") {
        Text(child.caseID).bold()
      }
      Section("Medicaid ID") {
        Text(child.medicaidID).bold()
      }
      Section("Date of Birth") {
        Text(child.listDOB)
      }
      Section("Contact Details") {
        ChildContactDetailsView(child: child)
      }
      Section("Current Address") {
        Text(child.formattedAddress)
      }
      Section("Risk Flags") {
        RiskFlagListRow(flags: child.risks)
      }
      Section("Notes") {
        ForEach(child.notes ?? []) { note in
          NavigationLink(destination: Text(note.body)) {
            ScrollView(.vertical) {
              Text(note.formattedDate)
            }
          }
        }
      }
    }
  }
}

struct ChildDetailList_Previews: PreviewProvider {
  
  static var previews: some View {
    ChildDetailList(child: try! Helpers.getRandomMockChild())
  }
}
