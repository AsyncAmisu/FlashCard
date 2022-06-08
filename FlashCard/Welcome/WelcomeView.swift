//
//  WelcomeView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 4.06.22.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            WelcomeMessageView()
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

