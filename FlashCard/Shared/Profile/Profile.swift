//
//  Profile.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import Foundation

/// Profile of the learner using the app.
struct Profile : Codable {
  /// (Selected) name of the learner.
  var name: String
  
  /// Initializes a new `Profile` with an empty `name`.
  init() {
    self.name = ""
  }
  
  /// Initializes a new `Profile` with a specified name.
  ///  - Parameters:
  ///     - name Name of the user profile.
  init(named name: String) {
    self.name = name
  }
}
