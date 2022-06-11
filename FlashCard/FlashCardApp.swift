//
//  FlashCardApp.swift
//  FlashCard
//
//  Created by Alexander Snitko on 4.06.22.
//

import SwiftUI

@main
struct FlashCardApp: App {
    
    let userManager = UserManager()
    
    init() {
        userManager.load()
    }
    
    var body: some Scene {
        WindowGroup {
            RegisterView()
                .environmentObject(userManager)
        }
    }
}

struct FlashCardApp_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}
