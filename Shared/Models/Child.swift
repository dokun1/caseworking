//
//  Child.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation

struct Child: Identifiable {
  var id: UUID
  var medicaidID: String
  var caseID: String
  var firstName: String
  var lastName: String
  var dateOfBirth: Date
  var locationHistory: [Location]
  var notes: [Note]?
  var risks: [RiskFlag]?
  var avatar: Data?
  var avatarURL: URL?
  
  var currentLocation: Location? {
    locationHistory.sorted {
      $0.lastUpdated.compare($1.lastUpdated) == .orderedDescending
    }.first
  }
  
  var listDOB: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    return formatter.string(from: dateOfBirth)
  }
}
