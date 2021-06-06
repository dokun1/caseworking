//
//  DevHelpers.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation

struct Helpers {
  public static let avatarSampleURL1 = URL(string: "https://www.trbimg.com/img-5b733455/turbine/ct-intense-thanos-moments-infinity-war-20180814")!
  public static let avatarSampleURL2 = URL(string: "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.raphaelsaadiq.com%2Fwp-content%2Fuploads%2F2020%2F03%2FTony-Stark.jpg&f=1&nofb=1")!
  public static let avatarSampleURL3 = URL(string: "https://posterspy.com/wp-content/uploads/2019/07/Captain-America-Portrait-With-A-Logo-Blue-A-1200x1600.jpg")!
  
  public static let dob1 = Date()
  
  public static let mockLocation1 = Location(lastUpdated: Date(),
                                            addressLineOne: "11501 Burnet Road",
                                            city: "Austin",
                                            state: "TX",
                                            zipcode: "78758")
  
  public static let mockLocation2 = Location(lastUpdated: Date(), addressLineOne: "14000 Summit Drive", addressLineTwo: "Suite 100", city: "Austin", state: "TX", zipcode: "78728")
  
  public static let mockChild1 = Child(id: UUID(), medicaidID: "98759894", caseID: "98749832", firstName: "Thanos", lastName: "Something", dateOfBirth: dob1, locationHistory: [mockLocation1], avatarURL: avatarSampleURL1)
  public static let mockChild2 = Child(id: UUID(), medicaidID: "98347598", caseID: "13443542", firstName: "Tony", lastName: "Stark", dateOfBirth: dob1, locationHistory: [mockLocation2], avatarURL: avatarSampleURL2)
  public static let mockChild3 = Child(id: UUID(), medicaidID: "28748803", caseID: "45654646", firstName: "Captain", lastName: "America", dateOfBirth: dob1, locationHistory: [mockLocation1, mockLocation2], avatarURL: avatarSampleURL3)
}
