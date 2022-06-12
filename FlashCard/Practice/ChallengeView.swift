//
//  ChallengeView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 11.06.22.
//

import SwiftUI

struct ChallengeView: View {
    var body: some View {
        HStack {
            Text("A great and warm welcome to Kuchi")
                .layoutPriority(-1)
                .background(Color.red)
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
                .layoutPriority(1)
            Text("A great and warm welcome to Kuchi")
                .background(Color.red)
        }
        .background(.yellow)
    }
}

struct ChallengeView_Previews: PreviewProvider {
    static var previews: some View {
        ChallengeView()
    }
}
