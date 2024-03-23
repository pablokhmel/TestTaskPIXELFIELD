//
//  AppLabelPair.swift
//  test-task
//
//  Created by MacBook on 23.03.2024.
//

import SwiftUI

struct AppLabelPair<Content : View>: View {
    var firstTitle: String
    var secondTitle: String
    @ViewBuilder var content: Content

    var body: some View {
        HStack(spacing: 24) {
            LatoText(text: firstTitle, color: Color.secondaryLabelColor)
            NavigationLink {
                content
                    .navigationBarBackButtonHidden()
            } label: {
                GaramondText(text: secondTitle, weight: .medium, color: Color.Welcome.signInButton)
            }
        }
    }
}

#Preview {
    AppLabelPair(firstTitle: "first", secondTitle: "second") {
        Text("Hello world")
    }
}
