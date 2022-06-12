//
//  Profile.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import Foundation

struct Profile : Codable {
  var name: String
  
  init() {
    self.name = ""
  }

  init(named name: String) {
    self.name = name
  }
}
