//
//  ChallengeView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 11.06.22.
//

import SwiftUI

struct ChallengeView: View {
    
    let challengeTest: ChallengeTest
    
    @State var showAnswers = false
    
    var body: some View {
        VStack {
            Button {
                showAnswers.toggle()
            } label: {
                QuestionView(question: challengeTest.challenge.question)
                    .frame(height: 300)
            }
            
            if showAnswers {
                Divider()
                ChoicesView(challengeTest: challengeTest)
                    .frame(height: 300)
                    .padding()
            }

        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static let challengeTest = ChallengeTest(challenge: Challenge(question: "おねがい　します", pronunciation: "Onegai shimasu", answer: "Please"), answers: ["Thank you", "Hello", "Goodbye"])
    static var previews: some View {
        ChallengeView(challengeTest: challengeTest)
    }
}
