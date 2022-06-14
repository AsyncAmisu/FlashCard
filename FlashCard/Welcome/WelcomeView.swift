//
//  WelcomeView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 4.06.22.
//

import SwiftUI

struct WelcomeView: View {
    
    @EnvironmentObject var userManager: UserManager
    @ObservedObject var challegesViewModel = ChallengesViewModel()
    @State var showPractice = false
    
    @ViewBuilder
    var body: some View {
        if showPractice {
            PracticeView(challengeTest: $challegesViewModel.currentChallenge, userName: $userManager.profile.name)
        } else {
            ZStack {
                WelcomeBackgroundImage()
                VStack {
                    Text("Hi, \(userManager.profile.name)")
                    WelcomeMessageView()
                    Button {
                        showPractice = true
                    } label: {
                        HStack {
                            Image(systemName: "play")
                            Text(verbatim: "Start")
                        }
                    }

                }
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
            .environmentObject(UserManager())
    }
}

