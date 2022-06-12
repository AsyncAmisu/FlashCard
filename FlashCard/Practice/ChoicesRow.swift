//
//  ChoicesRow.swift
//  FlashCard
//
//  Created by Alexander Snitko on 11.06.22.
//

import SwiftUI

/// Displays the choice available for the practice question.
struct ChoicesRow: View {
  var choice: String
  
  var body: some View {
    Text(choice)
      .font(.largeTitle)
  }
}

struct ChoicesRow_Previews: PreviewProvider {
  static var previews: some View {
    ChoicesRow(choice: "Hello")
  }
}
