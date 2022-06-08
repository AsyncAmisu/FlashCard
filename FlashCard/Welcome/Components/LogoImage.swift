//
//  LogoImage.swift
//  FlashCard
//
//  Created by Alexander Snitko on 8.06.22.
//

import SwiftUI

struct LogoImage: View {
    var body: some View {
        Image(systemName: "table")
            .resizable()
            .frame(width: 30, height: 30)
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
            .background(Color(white: 0.9))
            .clipShape(Circle())
        .foregroundColor(Color.red)
    }
}

struct LogoImage_Previews: PreviewProvider {
    static var previews: some View {
        LogoImage()
    }
}
