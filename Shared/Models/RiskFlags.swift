//
//  RiskFlags.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation
import SwiftUI

enum RiskFlag: String, CaseIterable, Codable {
  case none = "None Listed"
  case selfHarm = "Self Harm Risk"
  case substanceAbuse = "Substance Abuse"
  case unauthorizedPlacement = "Unauthorized Placement"
  case aggressiveBehavior = "Aggressive Behavior"
  
  var color: Color {
    switch self {
      case .selfHarm: return .red
      case .substanceAbuse: return .blue
      case .unauthorizedPlacement: return .yellow
      case .aggressiveBehavior: return .green
      default: return .black
    }
  }
}
