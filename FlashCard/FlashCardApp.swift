//
//  FlashCardApp.swift
//  FlashCard
//
//  Created by Alexander Snitko on 4.06.22.
//

import SwiftUI

@main
struct FlashCardApp: App {
    var body: some Scene {
        WindowGroup {
            RegisterView()
        }
    }
}

struct FlashCardApp_Previews:PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
