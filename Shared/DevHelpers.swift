//
//  DevHelpers.swift
//  CaseWorking
//
//  Created by David Okun on 6/6/21.
//

import Foundation

enum HelperError: Error {
  case couldNotFindMockDataFile
  case couldNotDecodeMockData
  case couldNotGetRandomChild
}

struct Helpers {
  public static var decoder: JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return decoder
  }
  
  public static func getMockChildren() throws -> [Child] {
    guard let url = Bundle.main.url(forResource: "MockData", withExtension: "json") else {
      throw HelperError.couldNotFindMockDataFile
    }
    do {
      let data = try Data(contentsOf: url)
      let children = try self.decoder.decode([Child].self, from: data)
      return children.sorted { $0.lastName < $1.lastName }
    } catch let exception {
      print(exception)
      throw(HelperError.couldNotDecodeMockData)
    }
  }
  
  public static func getRandomMockChild() throws -> Child {
    do {
      guard let child = try getMockChildren().randomElement() else {
        throw HelperError.couldNotGetRandomChild
      }
      return child
    } catch {
      throw HelperError.couldNotGetRandomChild
    }
  }
}
