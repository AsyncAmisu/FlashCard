//
//  ChallengeView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 11.06.22.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        HStack(alignment: .lastTextBaseline) {
            Text("welcome to FlashCard").font(.caption)
            Text("welcome to FlashCard").font(.title)
            Button {
            } label: {
                Text("OK").font(.body)
            }
        }
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
