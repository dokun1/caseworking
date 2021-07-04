//
//  RiskFlagDisplay.swift
//  CaseWorking
//
//  Created by David Okun on 7/4/21.
//

import SwiftUI

struct RiskFlagDisplay: View {
  var flag: RiskFlag
  var body: some View {
    HStack {
      Image(systemName: "flag.fill").foregroundColor(flag.color)
      Text(flag.rawValue).frame(width: 100)
    }.frame(width: 150)
      .padding()
      .cornerRadius(10)
      .border(flag.color, width: 2)
  }
}

struct RiskFlagDisplay_Previews: PreviewProvider {
  static var previews: some View {
    RiskFlagDisplay(flag: .substanceAbuse)
  }
}
