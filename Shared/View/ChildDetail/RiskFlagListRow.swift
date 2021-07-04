//
//  RiskFlagListRow.swift
//  CaseWorking
//
//  Created by David Okun on 7/4/21.
//

import SwiftUI

struct RiskFlagListRow: View {
  @State var flags: [RiskFlag]?
  var body: some View {
    ScrollView(.horizontal) {
      HStack {
        ForEach(flags ?? [.none], id: \.self) { flag in
          RiskFlagDisplay(flag: flag)
        }
      }
    }
  }
}

struct RiskFlagListRow_Previews: PreviewProvider {
  static var previews: some View {
    RiskFlagListRow(flags: [.aggressiveBehavior, .selfHarm, .substanceAbuse])
  }
}
