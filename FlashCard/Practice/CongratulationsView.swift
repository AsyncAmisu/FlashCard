//
//  CongratulationsView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 11.06.22.
//

import SwiftUI

struct CongratulationsView: View {
  let avatarSize: CGFloat = 120
  let userName: String
    
    @ObservedObject
    var challengesViewModel = ChallengesViewModel()

  init(userName: String) {
    self.userName = userName
  }
  
  var body: some View {
      VStack {
          Text("Congratulations!")
              .font(.title)
              .foregroundColor(.gray)
          Text("You are awesome!")
              .fontWeight(.bold)
              .foregroundColor(.gray)
          Button {
              challengesViewModel.restart()
          } label: {
              Text("Play Again")
          }
          .padding(.top)
      }
  }
}

struct CongratulationsView_Previews: PreviewProvider {
  static var previews: some View {
    CongratulationsView(userName: "Johnny Swift")
      .environmentObject(ChallengesViewModel())
  }
}
