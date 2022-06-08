//
//  RegisterView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        ZStack {
            WelcomeBackgroundImage()
            VStack {
                WelcomeMessageView()
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
