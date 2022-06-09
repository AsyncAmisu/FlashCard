//
//  RegisterView.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name: String = ""
    
    var body: some View {
        VStack {
            Spacer()
            WelcomeMessageView()
            TextField("Enter your name...", text: $name)
                .bordered()
            Spacer()
        }
        .background(WelcomeBackgroundImage())
        .padding()
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
