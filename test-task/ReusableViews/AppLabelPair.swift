//
//  AppLabelPair.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct AppLabelPair: View {
    var firstTitle: String
    var secondTitle: String
    var action: () -> Void

    var body: some View {
        HStack(spacing: 24) {
            LatoText(text: firstTitle, color: Color.secondaryLabelColor)
            Button {
                action()
            } label: {
                GaramondText(text: secondTitle, weight: .medium, color: Color.Welcome.signInButton)
            }
        }
    }
}

#Preview {
    AppLabelPair(firstTitle: "first", secondTitle: "second") {
        
    }
}
