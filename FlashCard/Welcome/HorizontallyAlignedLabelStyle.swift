//
//  HorizontallyAlignedLabelStyle.swift
//  FlashCard
//
//  Created by Alexander Snitko on 6.06.22.
//

import SwiftUI

struct HorizontallyAlignedLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.icon
            configuration.title
        }
    }
}

