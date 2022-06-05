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
            Image("welcome", bundle: nil)
                .resizable()
                .aspectRatio(1 / 1, contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                .saturation(0.5)
                .blur(radius: 5)
                .opacity(0.08)
            HStack {
                Image(systemName: "table")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 3))
                    .background(Color(white: 0.9))
                    .clipShape(Circle())
                .foregroundColor(Color.red)
                Text("Welcome to FlashCard")
                    .font(.system(size: 30))
                    .bold()
                    .foregroundColor(.red)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
