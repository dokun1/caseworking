//
//  File.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation

struct Note: Identifiable, Codable {
  var id: UUID
  var dateTaken: Date
  
  var body: String
  
  var formattedDate: String {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM-dd-yyyy HH:MM:ss"
    return formatter.string(from: dateTaken)
  }
}
