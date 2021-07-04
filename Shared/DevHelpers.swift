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
  
  public static let fakeContactDetails = ContactDetails(phoneNumbers: ["+1 (512) 867-5309", "+1 (737) 867-5309"], emailAddresses: ["name@email.com", "person@email.org"], emergencyContactName: "Penny The Dog", emergencyContactNumber: "+1 (512) 987-2030")
  
  public static let note1 = Note(id: UUID(), dateTaken: Date().addingTimeInterval(-500), body: """
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Parturient montes nascetur ridiculus mus mauris vitae ultricies leo. Sit amet nisl suscipit adipiscing bibendum est ultricies integer quis. Vel pretium lectus quam id leo. Pharetra pharetra massa massa ultricies mi quis hendrerit dolor. Nulla aliquet enim tortor at auctor urna nunc. Sed cras ornare arcu dui vivamus arcu felis bibendum. Adipiscing at in tellus integer feugiat scelerisque varius morbi. Vulputate ut pharetra sit amet aliquam id diam. Porttitor eget dolor morbi non arcu risus.

Augue mauris augue neque gravida in fermentum et sollicitudin. In vitae turpis massa sed elementum tempus. Nulla porttitor massa id neque aliquam vestibulum. Viverra maecenas accumsan lacus vel facilisis volutpat. Sed elementum tempus egestas sed sed risus. Sapien faucibus et molestie ac feugiat sed lectus vestibulum. Mauris augue neque gravida in fermentum et sollicitudin ac. Libero justo laoreet sit amet cursus sit amet dictum sit. Eget arcu dictum varius duis at consectetur lorem donec. Magna fringilla urna porttitor rhoncus dolor purus non enim. Curabitur vitae nunc sed velit. Pellentesque pulvinar pellentesque habitant morbi tristique senectus et netus et. Euismod elementum nisi quis eleifend quam adipiscing vitae proin sagittis. Et molestie ac feugiat sed lectus. Quis vel eros donec ac odio tempor.

Condimentum lacinia quis vel eros donec ac odio. Auctor elit sed vulputate mi sit. Orci ac auctor augue mauris augue neque. Ut etiam sit amet nisl purus in mollis. Cursus in hac habitasse platea dictumst quisque sagittis purus sit. A diam maecenas sed enim ut sem. Tellus cras adipiscing enim eu turpis egestas. Cursus euismod quis viverra nibh cras pulvinar mattis. Tincidunt praesent semper feugiat nibh sed. Viverra vitae congue eu consequat ac felis donec. Urna nunc id cursus metus aliquam eleifend mi. Mi ipsum faucibus vitae aliquet nec ullamcorper sit amet. Feugiat pretium nibh ipsum consequat nisl vel pretium lectus quam. Diam maecenas ultricies mi eget mauris pharetra. Laoreet sit amet cursus sit amet dictum sit. Habitasse platea dictumst quisque sagittis purus. Felis bibendum ut tristique et egestas. Ornare arcu odio ut sem nulla pharetra diam sit amet.

At erat pellentesque adipiscing commodo. Amet mattis vulputate enim nulla aliquet porttitor lacus. At imperdiet dui accumsan sit amet nulla. Nam at lectus urna duis convallis convallis tellus. Sociis natoque penatibus et magnis dis parturient montes nascetur ridiculus. Non quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor. Cras tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Etiam tempor orci eu lobortis elementum nibh. Interdum posuere lorem ipsum dolor sit amet consectetur adipiscing elit. Magna sit amet purus gravida quis blandit.

Odio euismod lacinia at quis risus sed vulputate odio. Etiam dignissim diam quis enim lobortis scelerisque fermentum dui. Tempus urna et pharetra pharetra. Lacinia at quis risus sed vulputate odio. Tortor condimentum lacinia quis vel. Consequat interdum varius sit amet mattis vulputate enim. Viverra mauris in aliquam sem fringilla ut. Libero justo laoreet sit amet cursus sit amet dictum sit. Aliquam eleifend mi in nulla posuere sollicitudin aliquam ultrices sagittis. Arcu bibendum at varius vel pharetra vel.
""" )
  
  public static let note2 = Note(id: UUID(), dateTaken: note1.dateTaken.addingTimeInterval(-4000), body: note1.body)
  
  public static let mockLocation1 = Location(lastUpdated: Date(),
                                            addressLineOne: "11501 Burnet Road",
                                            city: "Austin",
                                            state: "TX",
                                            zipcode: "78758")
  
  public static let mockLocation2 = Location(lastUpdated: Date(), addressLineOne: "14000 Summit Drive", addressLineTwo: "Suite 100", city: "Austin", state: "TX", zipcode: "78728")
  
  
  
  public static let mockChild1 = Child(id: UUID(), medicaidID: "98759894", caseID: "98749832", firstName: "Thanos", lastName: "Something", dateOfBirth: dob1, locationHistory: [mockLocation1], notes: [note1, note2, note1], risks: [.substanceAbuse, .selfHarm, .aggressiveBehavior, .unauthorizedPlacement], avatarURL: avatarSampleURL1, contactDetails: fakeContactDetails)
  public static let mockChild2 = Child(id: UUID(), medicaidID: "98347598", caseID: "13443542", firstName: "Tony", lastName: "Stark", dateOfBirth: dob1, locationHistory: [mockLocation2], avatarURL: avatarSampleURL2, contactDetails: fakeContactDetails)
  public static let mockChild3 = Child(id: UUID(), medicaidID: "28748803", caseID: "45654646", firstName: "Captain", lastName: "America", dateOfBirth: dob1, locationHistory: [mockLocation1, mockLocation2], avatarURL: avatarSampleURL3, contactDetails: fakeContactDetails)
}
