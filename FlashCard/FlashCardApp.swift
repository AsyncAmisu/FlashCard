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
            StarterView()
                .environmentObject(userManager)
        }
    }
}

struct FlashCardApp_Previews: PreviewProvider {
    static var previews: some View {
//        StarterView()
//            .environmentObject(UserManager())
        RegisterView()
            .environmentObject(UserManager())
    }
}
