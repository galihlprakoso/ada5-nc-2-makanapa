//
//  PrimaryButtonStyle.swift
//  makanapa
//
//  Created by Galih Laras Prakoso on 27/07/22.
//

import Foundation
import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(Colors.accentColor))
            .foregroundColor(Color(Colors.textColor))
            .overlay(
                RoundedRectangle(cornerRadius: Dimensions.small)
                    .stroke(Color.white, lineWidth: 0.0)
            ).cornerRadius(Dimensions.small)
    }
}
