//
//  Child.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation

struct Child: Identifiable, Codable {
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

  var phoneNumbers: [String]?
  var emailAddresses: [String]?
  var emergencyContactName: String?
  var emergencyContactNumber: String?
  
  var currentLocation: Location? {
    locationHistory.sorted {
      $0.lastUpdated.compare($1.lastUpdated) == .orderedDescending
    }.first
  }
  
  var formattedAddress: String {
    guard let location = self.currentLocation else { return "" }
    return """
      \(location.addressLineOne)\n\(location.city), \(location.state) \(location.zipcode)
      """
  }
  
  var listDOB: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy"
    return formatter.string(from: dateOfBirth)
  }
}
