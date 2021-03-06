//
//  Location.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation
import CoreLocation

struct Location: Codable {
  var lastUpdated: Date
  var addressLineOne: String
  var addressLineTwo: String?
  var addressLineThree: String?
  var city: String
  var state: String
  var zipcode: String
  var latitude: Double?
  var longitude: Double?
}
