//
//  RiskFlagSelectionMenu.swift
//  CaseWorking
//
//  Created by David Okun on 7/4/21.
//

import SwiftUI

struct RiskFlagSelectionMenu: View {
    var body: some View {
      Menu {
        Menu("Assign Risk Flags") {
          ForEach(0 ..< RiskFlag.allCases.count) { flagIndex in
            
            HStack {
              Button(RiskFlag.allCases[flagIndex].rawValue) {
                print("tapped \(RiskFlag.allCases[flagIndex].rawValue)")
              }
              Image(systemName: "checkmark.circle.fill")
            }
          }
        }
        Button("Add Notes", action: {})
        Button("Update Address", action: {})
      } label: {
        Label("Menu", systemImage: "ellipsis.circle.fill")
      }
    }
}

struct RiskFlagSelectionMenu_Previews: PreviewProvider {
    static var previews: some View {
        RiskFlagSelectionMenu()
    }
}
