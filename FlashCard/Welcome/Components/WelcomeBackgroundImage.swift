//
//  WelcomeBackgroundImage.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import SwiftUI

struct WelcomeBackgroundImage: View {
    var body: some View {
        Image("welcome", bundle: nil)
            .resizable()
            .aspectRatio(1 / 1, contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .saturation(0.5)
            .blur(radius: 5)
            .opacity(0.08)
    }
}

struct WelcomeBackgroundImage_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeBackgroundImage()
    }
}
